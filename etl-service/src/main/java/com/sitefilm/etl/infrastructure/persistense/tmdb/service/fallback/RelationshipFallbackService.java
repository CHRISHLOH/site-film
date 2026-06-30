package com.sitefilm.etl.infrastructure.persistense.tmdb.service.fallback;

import com.sitefilm.etl.domain.model.failed.FailedRecord;
import com.sitefilm.etl.domain.model.ref.ContentCountry;
import com.sitefilm.etl.domain.model.ref.ContentGenre;
import com.sitefilm.etl.domain.model.ref.ContentLanguage;
import com.sitefilm.etl.domain.model.ref.ContentPerson;
import com.sitefilm.etl.domain.port.repository.RelationshipsRepositoryPort;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordFactory;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordsRepository;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

@Service
public class RelationshipFallbackService {
    private final RelationshipsRepositoryPort repository;
    private final FailedRecordFactory failedRecordFactory;
    private final FailedRecordsRepository failedRecordsRepository;

    public RelationshipFallbackService(RelationshipsRepositoryPort repository, FailedRecordFactory failedRecordFactory, FailedRecordsRepository failedRecordsRepository) {
        this.repository = repository;
        this.failedRecordFactory = failedRecordFactory;
        this.failedRecordsRepository = failedRecordsRepository;
    }

    @Transactional(propagation = Propagation.NESTED)
    public void saveOneCountrySafely(ContentCountry contentCountry) {
        try{
            repository.saveOneCountry(contentCountry);
        } catch (DataIntegrityViolationException ex){
            FailedRecord fr = failedRecordFactory.getContentCountryFailedRecord(contentCountry, ex);
            failedRecordsRepository.saveFailedRecord(fr);
        }
    }

    @Transactional(propagation = Propagation.NESTED)
    public void saveOneGenreSafely(ContentGenre contentGenre) {
        try{
            repository.saveOneGenre(contentGenre);
        } catch (DataIntegrityViolationException ex){
            FailedRecord fr = failedRecordFactory.getContentGenreFailedRecord(contentGenre, ex);
            failedRecordsRepository.saveFailedRecord(fr);
        }
    }

    @Transactional(propagation = Propagation.NESTED)
    public void saveOneLanguageSafely(ContentLanguage contentLanguage) {
        try{
            repository.saveOneLanguage(contentLanguage);
        } catch (DataIntegrityViolationException ex){
            FailedRecord fr = failedRecordFactory.getContentLanguageFailedRecord(contentLanguage, ex);
            failedRecordsRepository.saveFailedRecord(fr);
        }
    }

    @Transactional(propagation = Propagation.NESTED)
    public void saveOneContentPersonSafely(ContentPerson contentPerson) {
        try {
            repository.saveOneContentPerson(contentPerson);
        } catch (DataIntegrityViolationException ex){
            FailedRecord fr = failedRecordFactory.getContentPersonFailedRecord(contentPerson, ex);
            failedRecordsRepository.saveFailedRecord(fr);
        }
    }
}
