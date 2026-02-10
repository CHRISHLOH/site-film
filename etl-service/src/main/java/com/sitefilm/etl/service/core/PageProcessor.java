package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.ContentAggregateDto;
import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.dto.core.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.dto.core.movie.MovieIdDto;
import com.sitefilm.etl.dto.core.person.PersonsInMovieResponseDto;
import com.sitefilm.etl.service.core.db.PersistContentFactory;
import com.sitefilm.etl.service.core.dto.PersistentBatchDto;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;

@Service
public class PageProcessor {
    private final CoreTmdbClient tmdbClient;
    private final ExecutorService executorService;
    private final ContentAggregateFactory contentAggregateFactory;
    private final DataBatchAggregator aggregator;
    private final PersistContentFactory persistContentFactory;


    public PageProcessor(CoreTmdbClient tmdbClient, ExecutorService executorService, ContentAggregateFactory contentAggregateFactory, DataBatchAggregator aggregator, PersistContentFactory persistContentFactory) {
        this.tmdbClient = tmdbClient;
        this.executorService = executorService;
        this.contentAggregateFactory = contentAggregateFactory;
        this.aggregator = aggregator;
        this.persistContentFactory = persistContentFactory;
    }

    public String loadTmdb(Integer pageNumber, DictionariesDto dictionaries) {
        List<Long> movieIds = tmdbClient.loadMovieIds(pageNumber)
                .getMovieIds()
                .stream()
                .map(MovieIdDto::id)
                .toList();
        List<CompletableFuture<ContentAggregateDto>> futures =
                movieIds.stream()
                        .map(id -> loadOneMovieAsync(id, dictionaries))
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
        return "GOTOVO";
    }

    private CompletableFuture<ContentAggregateDto> loadOneMovieAsync(Long movieId, DictionariesDto dictionaries) {
        CompletableFuture<MovieDetailsResponseDto> detailsFuture =
                CompletableFuture.supplyAsync(() ->
                        tmdbClient.loadMovieDetails(movieId), executorService
                );
        CompletableFuture<PersonsInMovieResponseDto> castFuture =
                CompletableFuture.supplyAsync(() ->
                        tmdbClient.loadMovieCast(movieId), executorService
                );
        return detailsFuture.thenCombine(castFuture,(movieDetails, castDto) ->
                contentAggregateFactory.aggregateContent(movieDetails, castDto, dictionaries)
        );
    }
}
