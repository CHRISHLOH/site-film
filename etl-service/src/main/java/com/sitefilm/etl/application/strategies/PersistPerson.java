package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.collector.MissingTranslationProcessor;
import com.sitefilm.etl.application.collector.dto.PersonTransferTranslation;
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

    public PersistPerson(PersonRepositoryAdapter personRepository, MissingTranslationProcessor missingTranslationProcessor) {
        this.personRepository = personRepository;
        this.missingTranslationProcessor = missingTranslationProcessor;
    }

    @Override
    public void execute(ContentLoadContext context) {
        Set<Person> persons = personRepository.save(context.getFetchedPersons());
        context.setSavedPersons(persons);
        List<PersonTransferTranslation> ptt = persons.stream()
                .map(person -> new PersonTransferTranslation(person.getId(), person.getPersonTranslation()))
                .toList();
        missingTranslationProcessor.saveMissingPersonTranslations(ptt);
    }
}
