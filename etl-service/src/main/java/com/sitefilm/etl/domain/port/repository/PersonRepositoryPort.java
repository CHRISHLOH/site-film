package com.sitefilm.etl.domain.port.repository;

import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.infrastructure.persistense.tmdb.row.PersonIds;
import com.sitefilm.etl.infrastructure.persistense.tmdb.row.PersonTranslationRow;

import java.util.List;
import java.util.Set;

public interface PersonRepositoryPort {
    Set<Long> existPersons(List<Long> ids);
    void savePerson(List<Person> persons);
    void saveTranslation(List<PersonTranslationRow> translations);
    List<PersonIds> getPersonsWithId(List<Long> ids);
    void  saveOnePerson(Person person);
    void saveOnePersonTranslation(PersonTranslationRow t);
}
