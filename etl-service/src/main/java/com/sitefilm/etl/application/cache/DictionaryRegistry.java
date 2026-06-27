package com.sitefilm.etl.application.cache;

import com.sitefilm.etl.domain.model.dictionaries.DictionariesData;
import com.sitefilm.etl.domain.model.dictionaries.*;
import com.sitefilm.etl.domain.model.locale.DBIso;
import com.sitefilm.etl.domain.model.person.CareerType;
import com.sitefilm.etl.infrastructure.persistense.tmdb.service.DictionaryPersistenceService;
import org.springframework.stereotype.Component;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.stream.Collectors;

@Component
public class DictionaryRegistry {
    private final DictionaryPersistenceService service;

    private Map<Integer, Genre> genreMap = new ConcurrentHashMap<>();
    private Map<String, Country> countryMap = new ConcurrentHashMap<>();
    private Map<CareerKey, Career> careerMap = new ConcurrentHashMap<>();
    private Map<String, Language> languageMap = new ConcurrentHashMap<>();

    public DictionaryRegistry(DictionaryPersistenceService service) {
        this.service = service;
    }

    public void register(DictionariesData  dictionariesData) {
        this.genreMap = dictionariesData.genres().stream()
                .collect(Collectors.toMap(
                        Genre::getExternalId,
                        g -> g
                ));
        this.countryMap = dictionariesData.countries().stream()
                .collect(Collectors.toMap(
                        Country::getIso_3166_1,
                        c -> c
                ));
        this.careerMap = dictionariesData.careers().stream()
                .collect(Collectors.toMap(
                        c -> new CareerKey(
                                c.getType(),
                                c.getTranslations().get(DBIso.ISO_EN.getCode())
                        ),
                        c -> c
                ));
        this.languageMap = dictionariesData.languages().stream()
                .collect(Collectors.toMap(
                        Language::getIso_639_1,
                        l -> l
                ));
    }

    public Genre getGenre(Integer externalId) {
        return genreMap.computeIfAbsent(externalId, service::saveGenre);
    }

    public Country getCountry(String isoCode) {
        return countryMap.computeIfAbsent(isoCode, service::saveCountry);
    }

    public Career getCareer(CareerType type, String job) {
        return careerMap.computeIfAbsent(new CareerKey(type, job), service::saveCareer);
    }

    public Language getLanguage(String iso) {
        return languageMap.computeIfAbsent(iso, service::saveLanguage);
    }
}
