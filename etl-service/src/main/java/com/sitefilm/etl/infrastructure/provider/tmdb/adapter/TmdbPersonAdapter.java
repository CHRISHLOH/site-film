package com.sitefilm.etl.infrastructure.provider.tmdb.adapter;

import com.sitefilm.etl.application.ex.PersonNotFoundException;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordFactory;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordsRepository;
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
    private final FailedRecordFactory failedRecordFactory;
    private final FailedRecordsRepository failedRecordsRepository;

    public TmdbPersonAdapter(RateLimitedTmdbClient tmdbClient, ExecutorService executorService, TmdbPersonMapper mapper, FailedRecordFactory failedRecordFactory, FailedRecordsRepository failedRecordsRepository) {
        this.tmdbClient = tmdbClient;
        this.executorService = executorService;
        this.mapper = mapper;
        this.failedRecordFactory = failedRecordFactory;
        this.failedRecordsRepository = failedRecordsRepository;
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
        List<CompletableFuture<Optional<PersonDetailsResponseDto>>> futures = personIds.stream()
                .map(this::loadPerson)
                .toList();
        List<PersonDetailsResponseDto> personCastDto = futures.stream()
                .map(CompletableFuture::join)
                .flatMap(Optional::stream)
                .toList();
        return mapper.castMapping(personCastDto, personMovieRoles);
    }

    private CompletableFuture<Optional<PersonDetailsResponseDto>> loadPerson(Long personId) {
        return CompletableFuture.supplyAsync(() -> {
            try {
                semaphore.acquire();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new RuntimeException(e);
            }
            try {
                return Optional.of(tmdbClient.loadPersonDetails(personId));
            } catch (PersonNotFoundException e) {
                failedRecordsRepository.saveFailedRecord(
                        failedRecordFactory.getSaveNotFoundPersonFailedRecord(personId, e)
                );
                return Optional.empty();
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