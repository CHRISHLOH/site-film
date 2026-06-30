package com.sitefilm.etl.infrastructure.persistense.tmdb.service;

import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.domain.port.repository.PersonRepositoryPort;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordFactory;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordsRepository;
import com.sitefilm.etl.infrastructure.persistense.tmdb.row.PersonIds;
import com.sitefilm.etl.infrastructure.persistense.tmdb.row.PersonTranslationRow;
import com.sitefilm.etl.infrastructure.persistense.tmdb.service.fallback.PersonPersistenceFallbackService;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
public class PersonSaveService {
    private final PersonRepositoryPort repository;
    private final PersonPersistenceFallbackService fallbackService;

    public PersonSaveService(PersonRepositoryPort repository, PersonPersistenceFallbackService fallbackService) {
        this.repository = repository;
        this.fallbackService = fallbackService;
    }

    @Transactional
    protected void savePersonSafely(List<Person> persons, Map<Long, Person> personMap, List<Long> externalIds) {
        try{
            repository.savePerson(persons);
        } catch (DataIntegrityViolationException e) {
            for(Person person : persons){
                fallbackService.saveOnePersonSafely(person, personMap, externalIds);
            }
        }
    }

    @Transactional
    protected void saveTranslationSafely(List<PersonTranslationRow> translations, List<PersonIds> personsWithId) {
        try {
            repository.saveTranslation(translations);
        } catch (DataIntegrityViolationException e) {
            for (PersonTranslationRow t : translations){
                fallbackService.saveOnePersonTranslationSafely(t, personsWithId);
            }
        }
    }
}
