package com.sitefilm.etl.infrastructure.persistense.tmdb.service;

import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.domain.port.repository.PersonRepositoryPort;
import com.sitefilm.etl.infrastructure.persistense.tmdb.row.PersonIds;
import com.sitefilm.etl.infrastructure.persistense.tmdb.row.PersonTranslationRow;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class PersonPersistenceService {
    private final PersonSaveService saveService;
    private final PersonRepositoryPort repository;

    public PersonPersistenceService(PersonSaveService saveService, PersonRepositoryPort repository) {
        this.saveService = saveService;
        this.repository = repository;
    }

    public Set<Person> save(List<Person> persons) {
        Map<Long, Person> personMap = persons.stream().collect(Collectors.toMap(Person::getExternalId, person -> person));
        List<Long> externalIds = persons.stream().map(Person::getExternalId).collect(Collectors.toList());
        saveService.savePersonSafely(persons, personMap, externalIds);
        List<PersonIds> personsWithId = repository.getPersonsWithId(externalIds);
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
        saveService.saveTranslationSafely(allTranslations, personsWithId);
        return new HashSet<>(personMap.values());
    }
}
