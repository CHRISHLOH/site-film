package com.sitefilm.etl.infrastructure.persistense.tmdb.service.fallback;

import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.domain.port.repository.PersonRepositoryPort;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordFactory;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordsRepository;
import com.sitefilm.etl.infrastructure.persistense.tmdb.row.PersonIds;
import com.sitefilm.etl.infrastructure.persistense.tmdb.row.PersonTranslationRow;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
public class PersonPersistenceFallbackService {
    private final PersonRepositoryPort repository;
    private final FailedRecordsRepository failedRecordsRepository;
    private final FailedRecordFactory failedRecordFactory;

    public PersonPersistenceFallbackService(PersonRepositoryPort repository, FailedRecordsRepository failedRecordsRepository, FailedRecordFactory failedRecordFactory) {
        this.repository = repository;
        this.failedRecordsRepository = failedRecordsRepository;
        this.failedRecordFactory = failedRecordFactory;
    }

    @Transactional(propagation = Propagation.NESTED)
    public void saveOnePersonSafely(Person person, Map<Long, Person> personMap, List<Long> externalIds) {
        try{
            repository.saveOnePerson(person);
        } catch (DataIntegrityViolationException e1) {
            personMap.remove(person.getExternalId());
            externalIds.remove(person.getExternalId());
            failedRecordsRepository.saveFailedRecord(
                    failedRecordFactory.getSavePersonFailedRecord(person, e1)
            );
        }
    }

    @Transactional(propagation = Propagation.NESTED)
    public void saveOnePersonTranslationSafely(PersonTranslationRow translationRow, List<PersonIds> personsWithId) {
        try {
            repository.saveOnePersonTranslation(translationRow);
        } catch (DataIntegrityViolationException e1){
            failedRecordsRepository.saveFailedRecord(
                    failedRecordFactory.getSavePersonTranslationFailedRecord(translationRow, personsWithId, e1)
            );
        }
    }
}
