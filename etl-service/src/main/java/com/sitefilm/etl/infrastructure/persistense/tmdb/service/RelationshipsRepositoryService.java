package com.sitefilm.etl.infrastructure.persistense.tmdb.service;

import com.sitefilm.etl.domain.model.ref.*;
import com.sitefilm.etl.domain.port.repository.RelationshipsRepositoryPort;
import com.sitefilm.etl.infrastructure.persistense.tmdb.service.fallback.RelationshipFallbackService;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class RelationshipsRepositoryService {
    private final RelationshipsRepositoryPort repository;
    private final RelationshipFallbackService fallbackService;

    public RelationshipsRepositoryService(RelationshipsRepositoryPort repository, RelationshipFallbackService fallbackService) {
        this.repository = repository;
        this.fallbackService = fallbackService;
    }

    @Transactional
    public void save(RelationshipsAggregatedData data) {
        saveGenresSafely(data.contentGenre());
        saveCountriesSafely(data.contentCountry());
        saveLanguagesSafely(data.contentLanguage());
        saveContentPersonSafely(data.contentPerson());
    }

    private void saveGenresSafely(List<ContentGenre> contentGenres) {
        try {
            repository.saveGenres(contentGenres);
        } catch (DataIntegrityViolationException e) {
            for(ContentGenre contentGenre : contentGenres){
                fallbackService.saveOneGenreSafely(contentGenre);
            }
        }
    }

    private void saveCountriesSafely(List<ContentCountry> contentCountries) {
        try {
            repository.saveCountries(contentCountries);
        } catch (DataIntegrityViolationException e) {
            for(ContentCountry contentCountry : contentCountries){
                fallbackService.saveOneCountrySafely(contentCountry);
            }
        }
    }

    private void saveLanguagesSafely(List<ContentLanguage> contentLanguages) {
        try {
            repository.saveLanguages(contentLanguages);
        } catch (DataIntegrityViolationException e) {
            for(ContentLanguage contentLanguage : contentLanguages){
                fallbackService.saveOneLanguageSafely(contentLanguage);
            }
        }
    }

    private void saveContentPersonSafely(List<ContentPerson> contentPersons) {
        try {
            repository.saveContentPerson(contentPersons);
        } catch (DataIntegrityViolationException e) {
            for(ContentPerson contentPerson : contentPersons){
                fallbackService.saveOneContentPersonSafely(contentPerson);
            }
        }
    }
}
