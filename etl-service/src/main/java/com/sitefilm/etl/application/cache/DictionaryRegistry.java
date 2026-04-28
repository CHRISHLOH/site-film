package com.sitefilm.etl.application.cache;

import com.sitefilm.etl.domain.model.dictionaries.*;
import com.sitefilm.etl.domain.model.locale.DBIso;
import com.sitefilm.etl.domain.model.person.CareerType;
import com.sitefilm.etl.infrastructure.persistense.tmdb.DictionariesRepositoryAdapter;
import org.springframework.stereotype.Component;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;
import java.util.stream.Collectors;

@Component
public class DictionaryRegistry {

    private final DictionariesRepositoryAdapter repositoryAdapter;

    // Иммутабельный снапшот всех справочников
    private record DictionarySnapshot(
            Map<Integer, Genre>    genres,
            Map<String, Country>   countries,
            Map<CareerKey, Career> careers,
            Map<String, Language>  languages
    ) {}

    // Атомарная ссылка — замена происходит одним CAS-операцией
    private final AtomicReference<DictionarySnapshot> snapshot =
            new AtomicReference<>(new DictionarySnapshot(
                    Map.of(), Map.of(), Map.of(), Map.of()
            ));

    public DictionaryRegistry(DictionariesRepositoryAdapter repositoryAdapter) {
        this.repositoryAdapter = repositoryAdapter;
    }

    public void register(List<Genre> genres,
                         List<Country> countries,
                         List<Career> careers,
                         List<Language> languages) {
        // Строим новые карты локально — никто не видит промежуточное состояние
        Map<Integer, Genre> newGenres = genres.stream()
                .collect(Collectors.toUnmodifiableMap(Genre::getExternalId, g -> g));

        Map<String, Country> newCountries = countries.stream()
                .collect(Collectors.toUnmodifiableMap(Country::getIso_3166_1, c -> c));

        Map<CareerKey, Career> newCareers = careers.stream()
                .collect(Collectors.toUnmodifiableMap(
                        c -> new CareerKey(c.getType(), c.getTranslations().get(DBIso.ISO_EN.getCode())),
                        c -> c
                ));

        Map<String, Language> newLanguages = languages.stream()
                .collect(Collectors.toUnmodifiableMap(Language::getIso_639_1, l -> l));

        // Атомарная подмена — один момент, все карты меняются вместе
        snapshot.set(new DictionarySnapshot(newGenres, newCountries, newCareers, newLanguages));
    }

    public Genre getGenre(Integer externalId) {
        Genre found = snapshot.get().genres().get(externalId);
        if (found != null) return found;

        return saveAndCache(externalId);
    }

    public Country getCountry(String isoCode) {
        Country found = snapshot.get().countries().get(isoCode);
        if (found != null) return found;

        return saveAndCacheCountry(isoCode);
    }

    public Career getCareer(CareerType type, String job) {
        Career found = snapshot.get().careers().get(new CareerKey(type, job));
        if (found != null) return found;

        return saveAndCacheCareer(type, job);
    }

    public Language getLanguage(String iso) {
        Language found = snapshot.get().languages().get(iso);
        if (found != null) return found;

        return saveAndCacheLanguage(iso);
    }

    // --- Приватные методы сохранения с защитой от дублирования ---

    private synchronized Genre saveAndCache(Integer externalId) {
        // Double-checked: пока мы ждали synchronized, другой поток уже мог добавить
        Genre existing = snapshot.get().genres().get(externalId);
        if (existing != null) return existing;

        Map<String, String> translations = Map.of(DBIso.ISO_EN.getCode(), externalId.toString());
        Genre genre = Genre.builder().externalId(externalId).translations(translations).build();
        Genre saved = repositoryAdapter.saveGenre(genre);

        addToSnapshot(saved, null, null, null);
        return saved;
    }

    private synchronized Country saveAndCacheCountry(String isoCode) {
        Country existing = snapshot.get().countries().get(isoCode);
        if (existing != null) return existing;

        Map<String, String> translations = Map.of(DBIso.ISO_EN.getCode(), isoCode);
        Country country = Country.builder().iso_3166_1(isoCode).translations(translations).build();
        Country saved = repositoryAdapter.saveCountry(country);

        addToSnapshot(null, saved, null, null);
        return saved;
    }

    private synchronized Career saveAndCacheCareer(CareerType type, String job) {
        Career existing = snapshot.get().careers().get(new CareerKey(type, job));
        if (existing != null) return existing;

        Map<String, String> translations = Map.of(DBIso.ISO_EN.getCode(), job);
        Career career = Career.builder().type(type).translations(translations).build();
        Career saved = repositoryAdapter.saveCareer(career);

        addToSnapshot(null, null, saved, null);
        return saved;
    }

    private synchronized Language saveAndCacheLanguage(String iso) {
        Language existing = snapshot.get().languages().get(iso);
        if (existing != null) return existing;

        Map<String, String> translations = Map.of(DBIso.ISO_EN.getCode(), iso);
        Language language = Language.builder().iso_639_1(iso).translations(translations).build();
        Language saved = repositoryAdapter.saveLanguage(language);

        addToSnapshot(null, null, null, saved);
        return saved;
    }

    // Добавляет один элемент в снапшот атомарно
    private void addToSnapshot(Genre genre, Country country, Career career, Language language) {
        snapshot.updateAndGet(current -> {
            Map<Integer, Genre> genres = genre != null
                    ? addToMap(current.genres(), genre.getExternalId(), genre)
                    : current.genres();

            Map<String, Country> countries = country != null
                    ? addToMap(current.countries(), country.getIso_3166_1(), country)
                    : current.countries();

            Map<CareerKey, Career> careers = career != null
                    ? addToMap(current.careers(),
                    new CareerKey(career.getType(), career.getTranslations().get(DBIso.ISO_EN.getCode())),
                    career)
                    : current.careers();

            Map<String, Language> languages = language != null
                    ? addToMap(current.languages(), language.getIso_639_1(), language)
                    : current.languages();

            return new DictionarySnapshot(genres, countries, careers, languages);
        });
    }

    private <K, V> Map<K, V> addToMap(Map<K, V> original, K key, V value) {
        Map<K, V> copy = new HashMap<>(original);
        copy.put(key, value);
        return Collections.unmodifiableMap(copy);
    }
}
