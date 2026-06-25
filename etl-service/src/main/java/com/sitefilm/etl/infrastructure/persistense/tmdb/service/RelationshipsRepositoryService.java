package com.sitefilm.etl.infrastructure.persistense.tmdb.service;

import com.sitefilm.etl.domain.model.failed.FailedRecord;
import com.sitefilm.etl.domain.model.ref.*;
import com.sitefilm.etl.infrastructure.persistense.tmdb.RelationshipsRepositoryAdapter;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordFactory;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordsRepository;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class RelationshipsRepositoryService {
    private final RelationshipsRepositoryAdapter repository;
    private final FailedRecordFactory failedRecordFactory;
    private final FailedRecordsRepository failedRecordsRepository;

    public RelationshipsRepositoryService(RelationshipsRepositoryAdapter repository, FailedRecordFactory failedRecordFactory, FailedRecordsRepository failedRecordsRepository) {
        this.repository = repository;
        this.failedRecordFactory = failedRecordFactory;
        this.failedRecordsRepository = failedRecordsRepository;
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
                try{
                    repository.saveOneGenre(contentGenre);
                } catch (DataIntegrityViolationException ex){
                    FailedRecord fr = failedRecordFactory.getContentGenreFailedRecord(contentGenre, ex);
                    failedRecordsRepository.saveFailedRecord(fr);
                }
            }
        }
    }

    private void saveCountriesSafely(List<ContentCountry> contentCountries) {
        try {
            repository.saveCountries(contentCountries);
        } catch (DataIntegrityViolationException e) {
            for(ContentCountry contentCountry : contentCountries){
                try{
                    repository.saveOneCountry(contentCountry);
                } catch (DataIntegrityViolationException ex){
                    FailedRecord fr = failedRecordFactory.getContentCountryFailedRecord(contentCountry, ex);
                    failedRecordsRepository.saveFailedRecord(fr);
                }
            }
        }
    }

    private void saveLanguagesSafely(List<ContentLanguage> contentLanguages) {
        try {
            repository.saveLanguages(contentLanguages);
        } catch (DataIntegrityViolationException e) {
            for(ContentLanguage contentLanguage : contentLanguages){
                try{
                    repository.saveOneLanguage(contentLanguage);
                } catch (DataIntegrityViolationException ex){
                    FailedRecord fr = failedRecordFactory.getContentLanguageFailedRecord(contentLanguage, ex);
                    failedRecordsRepository.saveFailedRecord(fr);
                }
            }
        }
    }

    private void saveContentPersonSafely(List<ContentPerson> contentPersons) {
        try {
            repository.saveContentPerson(contentPersons);
        } catch (DataIntegrityViolationException e) {
            for(ContentPerson contentPerson : contentPersons){
                try {
                    repository.saveOneContentPerson(contentPerson);
                } catch (DataIntegrityViolationException ex){
                    FailedRecord fr = failedRecordFactory.getContentPersonFailedRecord(contentPerson, ex);
                    failedRecordsRepository.saveFailedRecord(fr);
                }
            }
        }
    }
}
