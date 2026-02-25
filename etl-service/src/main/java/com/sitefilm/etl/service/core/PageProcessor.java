package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.ContentAggregateDto;
import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.dto.core.ContentResponse;
import com.sitefilm.etl.dto.core.movie.MovieIdDto;
import com.sitefilm.etl.dto.core.person.PersonsInMovieResponseDto;
import com.sitefilm.etl.entity.enums.ContentType;
import com.sitefilm.etl.service.core.db.PersistContentFactory;
import com.sitefilm.etl.service.core.dto.PersistentBatchDto;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;

@Service
public class PageProcessor {
    private final CoreTmdbClient tmdbClient;
    private final ExecutorService movieExecutorService;
    private final ExecutorService castExecutor;
    private final ContentLoadStrategyFactory contentLoadStrategyFactory;
    private final DataBatchAggregator aggregator;
    private final PersistContentFactory persistContentFactory;


    public PageProcessor(CoreTmdbClient tmdbClient,
                         @Qualifier("movieExecutor") ExecutorService movieExecutorService,
                         @Qualifier("castExecutor") ExecutorService castExecutor, ContentLoadStrategyFactory contentLoadStrategyFactory,
                         DataBatchAggregator aggregator, PersistContentFactory
                                 persistContentFactory) {
        this.tmdbClient = tmdbClient;
        this.movieExecutorService = movieExecutorService;
        this.castExecutor = castExecutor;
        this.contentLoadStrategyFactory = contentLoadStrategyFactory;
        this.aggregator = aggregator;
        this.persistContentFactory = persistContentFactory;
    }

    public void loadTmdb(Integer pageNumber, DictionariesDto dictionaries, ContentType contentType) {
        List<Long> movieIds = tmdbClient.loadMovieIds(pageNumber)
                .getMovieIds()
                .stream()
                .map(MovieIdDto::id)
                .toList();
        List<CompletableFuture<ContentAggregateDto>> futures =
                movieIds.stream()
                        .map(id -> loadOneContentAsync(id, dictionaries, contentType))
                        .toList();
        CompletableFuture
                .allOf(futures.toArray(new CompletableFuture[0]))
                .join();

        List<ContentAggregateDto> result =
                futures.stream()
                        .map(CompletableFuture::join)
                        .toList();

        PersistentBatchDto dto = aggregator.aggregate(result);
        persistContentFactory.saveData(dto);
        System.out.println("готово сохранилось");
    }

    private <T extends ContentResponse> CompletableFuture<ContentAggregateDto> loadOneContentAsync(
            Long contentId,
            DictionariesDto dictionaries,
            ContentType type) {
        ContentLoadStrategy<T> strategy = contentLoadStrategyFactory.get(type);
        CompletableFuture<T> detailsFuture =
                CompletableFuture.supplyAsync(
                        () -> strategy.loadDetails(contentId), movieExecutorService);

        CompletableFuture<PersonsInMovieResponseDto> castFuture =
                CompletableFuture.supplyAsync(
                        () -> tmdbClient.loadMovieCast(contentId), castExecutor);

        return detailsFuture.thenCombineAsync(castFuture,
                (details, cast) -> strategy.aggregate(details, cast, dictionaries),
                movieExecutorService);
    }
}
