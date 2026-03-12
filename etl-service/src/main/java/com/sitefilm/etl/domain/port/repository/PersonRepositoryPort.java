package com.sitefilm.etl.domain.port.repository;

import com.sitefilm.etl.domain.model.Person;

import java.util.List;
import java.util.Set;

public interface PersonRepositoryPort {
    Set<Long> existPersons(List<Long> ids);
    Set<Person> save(List<Person> persons);
}
