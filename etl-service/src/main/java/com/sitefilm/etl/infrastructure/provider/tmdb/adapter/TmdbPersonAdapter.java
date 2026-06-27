package com.sitefilm.etl.infrastructure.provider.tmdb.adapter;

import com.sitefilm.etl.application.ex.PersonNotFoundException;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordFactory;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordsRepository;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.*;
import com.sitefilm.etl.domain.port.api.PersonProviderPort;
import com.sitefilm.etl.infrastructure.provider.tmdb.client.RateLimitedTmdbClient;
import com.sitefilm.etl.infrastructure.provider.tmdb.mapper.TmdbPersonMapper;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonDetailsResponseDto;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.util.*;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Semaphore;
import java.util.stream.Stream;

@Slf4j
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
    public List<RawPersonData> fetchCast(CreditsImported credits, Set<Long> existPersonIds) {
        List<Long> personIds = Stream.concat(
                        credits.cast().stream().map(Cast::externalId),
                        credits.crew().stream().map(Crew::externalId)
                )
                .distinct()
                .filter(personId ->
                        !existPersonIds.contains(personId)
                )
                .toList();
        log.info("Загруз инфо о персонах");
        List<CompletableFuture<Optional<PersonDetailsResponseDto>>> futures = personIds.stream()
                .map(this::loadPerson)
                .toList();
        List<PersonDetailsResponseDto> personCastDto = futures.stream()
                .map(CompletableFuture::join)
                .flatMap(Optional::stream)
                .toList();
        return mapper.castMapping(personCastDto);
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
                log.error("Человек не найден с id:{}", personId);
                failedRecordsRepository.saveFailedRecord(
                        failedRecordFactory.getSaveNotFoundPersonFailedRecord(personId, e)
                );
                return Optional.empty();
            } finally {
                semaphore.release();
            }
        }, executorService);
    }
}