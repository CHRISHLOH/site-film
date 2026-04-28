package com.sitefilm.etl.application.cache;

import com.sitefilm.etl.domain.model.dictionaries.*;
import com.sitefilm.etl.domain.model.locale.DBIso;
import com.sitefilm.etl.domain.model.person.CareerType;
import com.sitefilm.etl.infrastructure.persistense.tmdb.DictionariesRepositoryAdapter;
import org.springframework.stereotype.Component;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Component
public class DictionaryRegistry {
    private final DictionariesRepositoryAdapter repositoryAdapter;

    private Map<Integer, Genre> genreMap = new HashMap<>();
    private Map<String, Country> countryMap = new HashMap<>();
    private Map<CareerKey, Career> careerMap = new HashMap<>();
    private Map<String, Language> languageMap = new HashMap<>();

    public DictionaryRegistry(DictionariesRepositoryAdapter repositoryAdapter) {
        this.repositoryAdapter = repositoryAdapter;
    }

    public void register(List<Genre> genres,
                         List<Country> countries,
                         List<Career> careers,
                         List<Language> languages) {
        this.genreMap = genres.stream()
                .collect(Collectors.toMap(
                        Genre::getExternalId,
                        g -> g
                ));
        this.countryMap = countries.stream()
                .collect(Collectors.toMap(
                        Country::getIso_3166_1,
                        c -> c
                ));
        this.careerMap = careers.stream()
                .collect(Collectors.toMap(
                        c -> new CareerKey(
                                c.getType(),
                                c.getTranslations().get(DBIso.ISO_EN.getCode())
                        ),
                        c -> c
                ));
        this.languageMap = languages.stream()
                .collect(Collectors.toMap(
                        Language::getIso_639_1,
                        l -> l
                ));
    }

    public Genre getGenre(Integer externalId) {
        Genre findedGenre = this.genreMap.get(externalId);
        if(findedGenre != null) {
            return findedGenre;
        }
        Map<String, String> translations = new HashMap<>();
        translations.put(DBIso.ISO_EN.getCode(), externalId.toString());
        Genre genre = Genre.builder()
                .externalId(externalId)
                .translations(translations)
                .build();
        Genre result = repositoryAdapter.saveGenre(genre);
        genreMap.put(externalId, result);
        return result;
    }

    public Country getCountry(String isoCode) {
        Country findedCountry = countryMap.get(isoCode);
        if (findedCountry != null) {
            return findedCountry;
        }
        Map<String, String> translations = new HashMap<>();
        translations.put(DBIso.ISO_EN.getCode(), isoCode);
        Country country = Country.builder()
                .iso_3166_1(isoCode)
                .translations(translations)
                .build();
        Country result = repositoryAdapter.saveCountry(country);
        countryMap.put(isoCode, result);
        return result;

    }

    public Career getCareer(CareerType type, String job) {
        Career findedCareer = careerMap.get(new CareerKey(type, job));
        if (findedCareer != null) {
            return findedCareer;
        }
        Map<String, String> translations = new HashMap<>();
        translations.put(DBIso.ISO_EN.getCode(), job);
        Career career = Career.builder()
                .type(type)
                .translations(translations)
                .build();
        Career result = repositoryAdapter.saveCareer(career);
        careerMap.put(new CareerKey(type, job), result);
        return result;
    }

    public Language getLanguage(String iso) {
        Language findedLanguage = languageMap.get(iso);
        if (findedLanguage != null) {
            return findedLanguage;
        }
        Map<String, String> translations = new HashMap<>();
        translations.put(DBIso.ISO_EN.getCode(), iso);
        Language language = Language.builder()
                .iso_639_1(iso)
                .translations(translations)
                .build();
        Language result = repositoryAdapter.saveLanguage(language);
        languageMap.put(iso, result);
        return result;
    }
}
