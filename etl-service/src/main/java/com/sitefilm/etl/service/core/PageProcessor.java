package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.ContentAggregateDto;
import com.sitefilm.etl.dto.core.movie.MovieDetailsDto;
import com.sitefilm.etl.dto.core.movie.MovieIdDto;
import com.sitefilm.etl.dto.core.movie.ResponseMovieTranslationDto;
import com.sitefilm.etl.dto.core.person.PersonsCastDto;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;

@Service
public class PageProcessor {
    private final CoreTmdbClient tmdbClient;
    private final ExecutorService executorService;
    private final ContentAggregateFactory contentAggregateFactory;
    private final RelationshipsAggregateFactory relationshipsAggregateFactory;


    public PageProcessor(CoreTmdbClient tmdbClient, ExecutorService executorService, ContentAggregateFactory contentAggregateFactory) {
        this.tmdbClient = tmdbClient;
        this.executorService = executorService;

        this.contentAggregateFactory = contentAggregateFactory;
    }

    public List<?> loadTmdb(Integer pageNumber) {
        List<Long> movieIds = tmdbClient.loadMovieIds(pageNumber).getMovieIds().stream().map(MovieIdDto::id).toList();
        List <CompletableFuture<Void>> completableFutureList = new ArrayList<>();

        movieIds.forEach(id -> {
            try {
                MovieDetailsDto movieDetails = CompletableFuture.supplyAsync(
                        () -> tmdbClient.loadMovieDetails(id)
                ).get();
                ResponseMovieTranslationDto movieTranslation = CompletableFuture.supplyAsync(
                        () -> tmdbClient.loadMovieTranslation(id)
                ).get();
                PersonsCastDto personsCastDto = CompletableFuture.supplyAsync(() ->
                        tmdbClient.loadMovieCast(id)
                        ).get();
                ContentAggregateDto contentAggregateDto = contentAggregateFactory.aggregateContent(movieDetails, movieTranslation, personsCastDto);

            } catch (InterruptedException | ExecutionException e) {
                throw new RuntimeException(e);
            }

        });

        completableFutureList.forEach(CompletableFuture::join);

        return List.of();
    }
}
