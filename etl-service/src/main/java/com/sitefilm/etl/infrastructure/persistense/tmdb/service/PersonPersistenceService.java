package com.sitefilm.etl.infrastructure.persistense.tmdb.service;

import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.infrastructure.persistense.tmdb.FailedRecordFactory;
import com.sitefilm.etl.infrastructure.persistense.tmdb.FailedRecordsRepository;
import com.sitefilm.etl.infrastructure.persistense.tmdb.PersonRepositoryAdapter;
import com.sitefilm.etl.infrastructure.persistense.tmdb.row.PersonIds;
import com.sitefilm.etl.infrastructure.persistense.tmdb.row.PersonTranslationRow;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class PersonPersistenceService {
    private final PersonRepositoryAdapter personRepositoryAdapter;
    private final FailedRecordsRepository failedRecordsRepository;
    private final FailedRecordFactory failedRecordFactory;

    public PersonPersistenceService(PersonRepositoryAdapter personRepositoryAdapter, FailedRecordsRepository failedRecordsRepository, FailedRecordFactory failedRecordFactory) {
        this.personRepositoryAdapter = personRepositoryAdapter;
        this.failedRecordsRepository = failedRecordsRepository;
        this.failedRecordFactory = failedRecordFactory;
    }

    public Set<Person> save(List<Person> persons) {
        Map<Long, Person> personMap = persons.stream().collect(Collectors.toMap(Person::getExternalId, person -> person));
        List<Long> externalIds = persons.stream().map(Person::getExternalId).collect(Collectors.toList());
        savePersonSafely(persons, personMap, externalIds);
        List<PersonIds> personsWithId = personRepositoryAdapter.getPersonsWithId(externalIds);
        personsWithId.forEach(p -> {
            Person person = personMap.get(p.external_id());
            if (person != null) {
                person.setId(p.id());
            }
        });
        List<PersonTranslationRow> allTranslations = persons.stream()
                .filter(p -> p.getPersonTranslation() != null)
                .flatMap(p -> p.getPersonTranslation().stream()
                        .map(t -> new PersonTranslationRow(
                                p.getId(),
                                t.getLocale(),
                                t.getLocaleName(),
                                t.getBiography())))
                .toList();
        saveTranslationSafely(allTranslations, personsWithId);
        return new HashSet<>(personMap.values());
    }

    private void savePersonSafely(List<Person> persons, Map<Long, Person> personMap, List<Long> externalIds) {
        try{
            personRepositoryAdapter.savePerson(persons);
        } catch (DataIntegrityViolationException e) {
            for(Person person : persons){
                try{
                    personRepositoryAdapter.saveOnePerson(person);
                } catch (DataIntegrityViolationException e1) {
                    personMap.remove(person.getExternalId());
                    externalIds.remove(person.getExternalId());
                    failedRecordsRepository.saveFailedRecord(
                            failedRecordFactory.getSavePersonFailedRecord(person, e1)
                    );
                }
            }
        }
    }

    private void saveTranslationSafely(List<PersonTranslationRow> translations, List<PersonIds> personsWithId) {
        try {
            personRepositoryAdapter.saveTranslation(translations);
        } catch (DataIntegrityViolationException e) {
            for (PersonTranslationRow t : translations){
                try {
                    personRepositoryAdapter.saveOnePersonTranslation(t);
                } catch (DataIntegrityViolationException e1){
                    failedRecordsRepository.saveFailedRecord(
                            failedRecordFactory.getSavePersonTranslationFailedRecord(t, personsWithId, e1)
                    );
                }
            }
        }
    }
}
