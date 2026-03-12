package com.sitefilm.etl.infrastructure.provider.tmdb.adapter;

import com.sitefilm.etl.domain.model.PersonCastDto;
import com.sitefilm.etl.domain.model.PersonCrewDto;
import com.sitefilm.etl.domain.model.PersonImportDto;
import com.sitefilm.etl.domain.model.PersonMovieRole;
import com.sitefilm.etl.domain.port.api.PersonProviderPort;
import com.sitefilm.etl.domain.model.enums.MovieRoleType;
import com.sitefilm.etl.infrastructure.provider.tmdb.client.CoreTmdbClient;
import com.sitefilm.etl.infrastructure.provider.tmdb.client.RateLimitedTmdbClient;
import com.sitefilm.etl.infrastructure.provider.tmdb.mapper.TmdbPersonMapper;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonDetailsResponseDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonsInMovieResponseDto;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import java.util.*;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;
import java.util.stream.Stream;

@Component
public class TmdbPersonAdapter implements PersonProviderPort {
    private final RateLimitedTmdbClient tmdbClient;
    private final ExecutorService executorService;
    private final TmdbPersonMapper mapper;

    public TmdbPersonAdapter(RateLimitedTmdbClient tmdbClient, @Qualifier("personExecutor") ExecutorService executorService, TmdbPersonMapper mapper) {
        this.tmdbClient = tmdbClient;
        this.executorService = executorService;
        this.mapper = mapper;
    }


    @Override
    public List<PersonImportDto> fetchCast(Long movieId, Set<Long> existPersonIds) {
        PersonsInMovieResponseDto cast = tmdbClient.loadMovieCast(movieId);
        Map<Long, List<PersonMovieRole>> personMovieRoles = collectRoles(cast);
        List<Long> personIds = Stream.concat(
                        cast.getCast().stream().map(PersonCastDto::getExternalId),
                        cast.getCrew().stream().map(PersonCrewDto::getExternalId)
                )
                .distinct()
                .filter(personId ->
                        !existPersonIds.contains(personId)
                )
                .toList();
        List<CompletableFuture<PersonDetailsResponseDto>> futures =
                personIds.stream()
                        .map(this::loadPerson)
                        .toList();
        CompletableFuture
                .allOf(futures.toArray(new CompletableFuture[0]))
                .join();
        List<PersonDetailsResponseDto> personCastDto = futures.stream()
                .map(CompletableFuture::join)
                .toList();
        return mapper.castMapping(personCastDto, personMovieRoles);
    }

    @Override
    public List<Long> existPersons(Long movieId) {
        PersonsInMovieResponseDto cast =  tmdbClient.loadMovieCast(movieId);
        return Stream.concat(
                        cast.getCast().stream().map(PersonCastDto::getExternalId),
                        cast.getCrew().stream().map(PersonCrewDto::getExternalId)
                )
                .distinct()
                .toList();
    }

    private CompletableFuture<PersonDetailsResponseDto> loadPerson(Long personId) {
        return CompletableFuture.supplyAsync(() -> tmdbClient.loadPersonDetails(personId), executorService
        );
    }

    private Map<Long, List<PersonMovieRole>> collectRoles(PersonsInMovieResponseDto dto) {
        Map<Long, List<PersonMovieRole>> rolesByPersonId = new HashMap<>();
        for (PersonCastDto cast : dto.getCast()) {
            rolesByPersonId
                    .computeIfAbsent(cast.getExternalId(), k -> new ArrayList<>())
                    .add(PersonMovieRole.builder()
                            .externalId(cast.getExternalId())
                            .type(MovieRoleType.CAST)
                            .order(cast.getOrder())
                            .character(cast.getCharacter())
                            .job("Actor")
                            .build());
        }
        for (PersonCrewDto crew : dto.getCrew()) {
            rolesByPersonId
                    .computeIfAbsent(crew.getExternalId(), k -> new ArrayList<>())
                    .add(PersonMovieRole.builder()
                            .externalId(crew.getExternalId())
                            .type(MovieRoleType.CREW)
                            .department(crew.getDepartment())
                            .job(crew.getJob())
                            .build());
        }
        return rolesByPersonId;
    }
}
