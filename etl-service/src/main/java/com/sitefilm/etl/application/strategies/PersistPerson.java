package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.collector.MissingTranslationProcessor;
import com.sitefilm.etl.application.collector.dto.PersonTransferTranslation;
import com.sitefilm.etl.application.strategies.context.ContentLoadContext;
import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.infrastructure.persistense.tmdb.service.PersonPersistenceService;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;

@Component
public class PersistPerson implements LoadStep{
    private final PersonPersistenceService personPersistenceService;
    private final MissingTranslationProcessor  missingTranslationProcessor;

    public PersistPerson(PersonPersistenceService personPersistenceService, MissingTranslationProcessor missingTranslationProcessor) {
        this.personPersistenceService = personPersistenceService;
        this.missingTranslationProcessor = missingTranslationProcessor;
    }

    @Override
    public ContentLoadContext execute(ContentLoadContext context) {
        Set<Person> persons = personPersistenceService.save(context.fetchedPersons());
        List<PersonTransferTranslation> ptt = persons.stream()
                .map(person -> new PersonTransferTranslation(person.getId(), person.getPersonTranslation()))
                .toList();
        missingTranslationProcessor.saveMissingPersonTranslations(ptt);
        return context.withSavedPersons(persons);
    }
}
