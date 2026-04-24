package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.mapper.tmdb.PersonMapper;
import com.sitefilm.etl.application.strategies.context.ContentLoadContext;
import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.infrastructure.persistense.tmdb.PersonRepositoryAdapter;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.TmdbPersonAdapter;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.PersonImportDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.PersonMovieRole;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Component
public class FetchPersons implements LoadStep {
    private final PersonMapper personMapper;
    private final PersonRepositoryAdapter personRepositoryAdapter;
    private final TmdbPersonAdapter tmdbPersonAdapter;

    public FetchPersons(PersonMapper personMapper, PersonRepositoryAdapter personRepositoryAdapter, TmdbPersonAdapter tmdbPersonAdapter) {
        this.personMapper = personMapper;
        this.personRepositoryAdapter = personRepositoryAdapter;
        this.tmdbPersonAdapter = tmdbPersonAdapter;
    }

    @Override
    public void execute(ContentLoadContext context) {
        List<Long> castId = personMapper.existPersons(context.getImportedBundle().credits());
        Set<Long> existCast = personRepositoryAdapter.existPersons(castId);
        List<PersonImportDto> cast = tmdbPersonAdapter.fetchCast(context.getImportedBundle().credits(), existCast);
        Map<Long, PersonMovieRole> pmr = aggregatePersonMovieRoles(cast);
        List<Person> personList = personMapper.aggregateToDomain(cast);
        context.setPersonRoles(pmr);
        context.setFetchedPersons(personList);
    }

    private Map<Long, PersonMovieRole> aggregatePersonMovieRoles(List<PersonImportDto> persons) {
        return persons.stream().flatMap(personImportDto -> personImportDto.getPersonMovieData().stream()).collect(Collectors.toMap(
                PersonMovieRole::getExternalId,
                personMovieRole -> personMovieRole,
                (f, s) -> s
        ));
    }
}
