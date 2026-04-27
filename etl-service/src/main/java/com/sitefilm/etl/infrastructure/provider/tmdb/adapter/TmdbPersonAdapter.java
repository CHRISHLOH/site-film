package com.sitefilm.etl.infrastructure.provider.tmdb.adapter;

import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.*;
import com.sitefilm.etl.domain.port.api.PersonProviderPort;
import com.sitefilm.etl.domain.model.enums.MovieRoleType;
import com.sitefilm.etl.infrastructure.provider.tmdb.client.RateLimitedTmdbClient;
import com.sitefilm.etl.infrastructure.provider.tmdb.mapper.TmdbPersonMapper;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonDetailsResponseDto;
import org.springframework.stereotype.Component;

import java.util.*;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Semaphore;
import java.util.stream.Stream;

@Component
public class TmdbPersonAdapter implements PersonProviderPort {
    private final RateLimitedTmdbClient tmdbClient;
    private final ExecutorService executorService;
    private final TmdbPersonMapper mapper;
    private final Semaphore semaphore = new Semaphore(20);

    public TmdbPersonAdapter(RateLimitedTmdbClient tmdbClient, ExecutorService executorService, TmdbPersonMapper mapper) {
        this.tmdbClient = tmdbClient;
        this.executorService = executorService;
        this.mapper = mapper;
    }


    @Override
    public List<PersonImportDto> fetchCast(CreditsImported credits, Set<Long> existPersonIds) {
        Map<Long, List<PersonMovieRole>> personMovieRoles = collectRoles(credits);
        List<Long> personIds = Stream.concat(
                        credits.cast().stream().map(Cast::externalId),
                        credits.crew().stream().map(Crew::externalId)
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

    private CompletableFuture<PersonDetailsResponseDto> loadPerson(Long personId) {
        return CompletableFuture.supplyAsync(() -> {
            try {
                semaphore.acquire();
                return tmdbClient.loadPersonDetails(personId);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            } finally {
                semaphore.release();
            }
        }, executorService);
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
