package com.sitefilm.etl.infrastructure.persistense.tmdb.service;

import com.sitefilm.etl.domain.model.dictionaries.*;
import com.sitefilm.etl.domain.model.locale.DBIso;
import com.sitefilm.etl.infrastructure.persistense.tmdb.DictionariesRepositoryAdapter;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class DictionaryPersistenceService {

    private final DictionariesRepositoryAdapter repository;

    public DictionaryPersistenceService(DictionariesRepositoryAdapter repository) {
        this.repository = repository;
    }

    public Genre saveGenre(Integer externalId) {
        Map<String, String> translations = new HashMap<>();
        translations.put(DBIso.ISO_EN.getCode(), externalId.toString());
        Genre genre = Genre.builder()
                .externalId(externalId)
                .translations(translations)
                .build();
        return repository.saveGenre(genre);
    }

    public Country saveCountry(String isoCode) {
        Map<String, String> translations = new HashMap<>();
        translations.put(DBIso.ISO_EN.getCode(), isoCode);
        Country country = Country.builder()
                .iso_3166_1(isoCode)
                .translations(translations)
                .build();
        return repository.saveCountry(country);
    }

    public Career saveCareer(CareerKey careerKey) {
        Map<String, String> translations = new HashMap<>();
        translations.put(DBIso.ISO_EN.getCode(), careerKey.job());
        Career career = Career.builder()
                .type(careerKey.type())
                .translations(translations)
                .build();
        return repository.saveCareer(career);
    }

    public Language saveLanguage(String iso) {
        Map<String, String> translations = new HashMap<>();
        translations.put(DBIso.ISO_EN.getCode(), iso);
        Language language = Language.builder()
                .iso_639_1(iso)
                .translations(translations)
                .build();
        return repository.saveLanguage(language);
    }
}
