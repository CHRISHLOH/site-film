package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.aggreagor.RelationshipsAggregator;
import com.sitefilm.etl.application.collector.MissingTranslationProcessor;
import com.sitefilm.etl.application.mapper.tmdb.ContentMovieMapper;
import com.sitefilm.etl.application.mapper.tmdb.PersonMapper;
import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.domain.model.ref.RelationshipsAggregatedData;
import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.infrastructure.persistense.tmdb.MovieRepositoryAdapter;
import com.sitefilm.etl.infrastructure.persistense.tmdb.PersonRepositoryAdapter;
import com.sitefilm.etl.infrastructure.persistense.tmdb.RelationshipsRepositoryAdapter;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.TmdbMovieAdapter;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.TmdbPersonAdapter;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedBundle;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedMovie;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.PersonImportDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.PersonMovieRole;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;


@Component
public class MovieLoadStrategy implements ContentLoadStrategy{
    private final TmdbMovieAdapter tmdbMovieAdapter;
    private final TmdbPersonAdapter tmdbPersonAdapter;
    private final PersonRepositoryAdapter  personRepositoryAdapter;
    private final ContentMovieMapper movieMapper;
    private final PersonMapper personMapper;
    private final MovieRepositoryAdapter movieRepository;
    private final PersonRepositoryAdapter personRepository;
    private final RelationshipsAggregator relationshipsAggregator;
    private final RelationshipsRepositoryAdapter relationshipsRepositoryAdapter;
    private final MissingTranslationProcessor missingTranslationProcessor;

    public MovieLoadStrategy(TmdbMovieAdapter tmdbMovieAdapter, TmdbPersonAdapter tmdbPersonAdapter, PersonRepositoryAdapter personRepositoryAdapter, ContentMovieMapper movieMapper, PersonMapper personMapper, MovieRepositoryAdapter movieRepository, PersonRepositoryAdapter personRepository, RelationshipsAggregator relationshipsAggregator, RelationshipsRepositoryAdapter relationshipsRepositoryAdapter, MissingTranslationProcessor missingTranslationProcessor) {
        this.tmdbMovieAdapter = tmdbMovieAdapter;
        this.tmdbPersonAdapter = tmdbPersonAdapter;
        this.personRepositoryAdapter = personRepositoryAdapter;
        this.movieMapper = movieMapper;
        this.personMapper = personMapper;
        this.movieRepository = movieRepository;
        this.personRepository = personRepository;
        this.relationshipsAggregator = relationshipsAggregator;
        this.relationshipsRepositoryAdapter = relationshipsRepositoryAdapter;
        this.missingTranslationProcessor = missingTranslationProcessor;
    }

    @Override
    public void loadContent(int page) {
        List<Long> ids = tmdbMovieAdapter.fetchPopularIds(page);
        ids.forEach(id -> {
            ImportedBundle importedBundle = tmdbMovieAdapter.fetchDetails(id);
            List<Long> castId = personMapper.existPersons(importedBundle.credits());
            Set<Long> existCast = personRepositoryAdapter.existPersons(castId);
            List<PersonImportDto> cast = tmdbPersonAdapter.fetchCast(importedBundle.credits(), existCast);
            Content content = movieMapper.aggregateToDomain((ImportedMovie) importedBundle.importedContent());
            List<Person> personList = personMapper.aggregateToDomain(cast);
            Long contentId = movieRepository.save(content);
            missingTranslationProcessor.saveMissingContentTranslations(content.getTranslations(), contentId);
            Set<Person> persons = personRepository.save(personList);
            persons.forEach(person -> missingTranslationProcessor.saveMissingPersonTranslations(person.getPersonTranslation(), person.getId()));
            Map<Long, PersonMovieRole> personMovieRoles = aggregatePersonMovieRoles(cast);
            RelationshipsAggregatedData relationshipsAggregatedData = relationshipsAggregator.aggregatedData(
                    content.getGenres(),
                    content.getCountries(),
                    content.getSpokenLanguages(),
                    persons,
                    contentId,
                    personMovieRoles);
            relationshipsRepositoryAdapter.save(relationshipsAggregatedData);
        });
    }

    private Map<Long, PersonMovieRole> aggregatePersonMovieRoles(List<PersonImportDto> persons) {
        return persons.stream().flatMap(personImportDto -> personImportDto.getPersonMovieData().stream()).collect(Collectors.toMap(
                PersonMovieRole::getExternalId,
                personMovieRole -> personMovieRole,
                        (f, s) -> s
        ));
    }
}
