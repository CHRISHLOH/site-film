package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.ContentAggregateDto;
import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.dto.core.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.dto.core.movie.MovieIdDto;
import com.sitefilm.etl.dto.core.person.PersonsInMovieResponseDto;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;

@Service
public class PageProcessor {
    private final CoreTmdbClient tmdbClient;
    private final ExecutorService executorService;
    private final ContentAggregateFactory contentAggregateFactory;


    public PageProcessor(CoreTmdbClient tmdbClient, ExecutorService executorService, ContentAggregateFactory contentAggregateFactory) {
        this.tmdbClient = tmdbClient;
        this.executorService = executorService;
        this.contentAggregateFactory = contentAggregateFactory;
    }

    public List<?> loadTmdb(Integer pageNumber, DictionariesDto dictionaries) {
        List<Long> movieIds = tmdbClient.loadMovieIds(pageNumber).getMovieIds().stream().map(MovieIdDto::id).toList();
        movieIds.forEach(id -> {
            loadOneMovieAsync(id, dictionaries).thenAccept(result -> {
                System.out.println(result.toString());
            });
        });
        return List.of();
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
