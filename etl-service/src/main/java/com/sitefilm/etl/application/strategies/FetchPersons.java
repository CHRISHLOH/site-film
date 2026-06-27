package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.mapper.tmdb.PersonMapper;
import com.sitefilm.etl.application.strategies.context.ContentLoadContext;
import com.sitefilm.etl.domain.model.enums.MovieRoleType;
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

    public FetchPersons(PersonMapper personMapper, PersonRepositoryPort repository, PersonProviderPort tmdbPersonAdapter) {
        this.personMapper = personMapper;
        this.personRepositoryAdapter = repository;
        this.tmdbPersonAdapter = tmdbPersonAdapter;
    }

    @Override
    public ContentLoadContext execute(ContentLoadContext context) {
        CreditsImported credits = context.credits();
        List<Long> castId = personMapper.concatPersons(credits);
        Set<Long> existCast = personRepositoryAdapter.existPersons(castId);
        List<RawPersonData> cast = tmdbPersonAdapter.fetchCast(context.credits(), existCast);
        Map<Long, List<PersonMovieRole>> pmr = collectRoles(credits);
        List<Person> personList = personMapper.aggregateToDomain(cast);
        return context.withFetchedPersons(pmr, personList);
    }

    private Map<Long, List<PersonMovieRole>> collectRoles(CreditsImported credits) {
        Map<Long, List<PersonMovieRole>> rolesByPersonId = new HashMap<>();
        for (Cast cast : credits.cast()) {
            rolesByPersonId
                    .computeIfAbsent(cast.externalId(), k -> new ArrayList<>())
                    .add(PersonMovieRole.builder()
                            .externalId(cast.externalId())
                            .type(MovieRoleType.CAST)
                            .order(cast.order())
                            .character(cast.character())
                            .job("Actor")
                            .build());
        }
        for (Crew crew : credits.crew()) {
            rolesByPersonId
                    .computeIfAbsent(crew.externalId(), k -> new ArrayList<>())
                    .add(PersonMovieRole.builder()
                            .externalId(crew.externalId())
                            .type(MovieRoleType.CREW)
                            .department(crew.department())
                            .job(crew.job())
                            .build());
        }
        return rolesByPersonId;
    }
}
