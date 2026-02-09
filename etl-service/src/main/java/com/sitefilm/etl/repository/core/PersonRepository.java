package com.sitefilm.etl.repository.core;

import com.sitefilm.etl.entity.person.Person;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonRepository extends CrudRepository<Person, Long> {
}
