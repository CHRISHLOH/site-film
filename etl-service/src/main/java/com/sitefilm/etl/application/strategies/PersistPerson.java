package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.collector.MissingTranslationProcessor;
import com.sitefilm.etl.application.mapper.tmdb.PersonMapper;
import com.sitefilm.etl.application.strategies.context.ContentLoadContext;
import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.infrastructure.persistense.tmdb.PersonRepositoryAdapter;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;

@Component
public class PersistPerson implements LoadStep{
    private final PersonRepositoryAdapter personRepository;
    private final MissingTranslationProcessor  missingTranslationProcessor;
    private final PersonMapper  personMapper;

    public PersistPerson(PersonRepositoryAdapter personRepository, MissingTranslationProcessor missingTranslationProcessor, PersonMapper personMapper) {
        this.personRepository = personRepository;
        this.missingTranslationProcessor = missingTranslationProcessor;
        this.personMapper = personMapper;
    }

    @Override
    public void execute(ContentLoadContext context) {
        List<Person> personList = personMapper.aggregateToDomain(context.getFetchedPersons());
        Set<Person> persons = personRepository.save(personList);
        context.setSavedPersons(persons);
        persons.forEach(person -> missingTranslationProcessor.saveMissingPersonTranslations(person.getPersonTranslation(), person.getId()));
    }
}
