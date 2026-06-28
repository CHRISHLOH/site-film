package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.aggregator.RoleCollector;
import com.sitefilm.etl.application.mapper.tmdb.PersonMapper;
import com.sitefilm.etl.application.strategies.context.ContentLoadContext;
import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.domain.port.api.PersonProviderPort;
import com.sitefilm.etl.domain.port.repository.PersonRepositoryPort;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.*;
import org.springframework.stereotype.Component;

import java.util.*;

@Component
public class FetchPersons implements LoadStep {
    private final PersonMapper personMapper;
    private final PersonRepositoryPort personRepositoryAdapter;
    private final PersonProviderPort tmdbPersonAdapter;
    private final RoleCollector roleCollector;

    public FetchPersons(PersonMapper personMapper, PersonRepositoryPort repository, PersonProviderPort tmdbPersonAdapter, RoleCollector roleCollector) {
        this.personMapper = personMapper;
        this.personRepositoryAdapter = repository;
        this.tmdbPersonAdapter = tmdbPersonAdapter;
        this.roleCollector = roleCollector;
    }

    @Override
    public ContentLoadContext execute(ContentLoadContext context) {
        CreditsImported credits = context.credits();
        List<Long> castId = personMapper.concatPersons(credits);
        Set<Long> existCast = personRepositoryAdapter.existPersons(castId);
        List<RawPersonData> cast = tmdbPersonAdapter.fetchCast(context.credits(), existCast);
        Map<Long, List<PersonRole>> pmr = roleCollector.collectRoles(credits);
        List<Person> personList = personMapper.aggregateToDomain(cast);
        return context.withFetchedPersons(pmr, personList);
    }
}
