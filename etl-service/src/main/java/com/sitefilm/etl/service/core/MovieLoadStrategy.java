package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.core.movie.MovieDetailsDto;
import com.sitefilm.etl.dto.core.movie.MovieIdDto;

import java.util.List;

public class MovieLoadStrategy implements LoadStrategy {

    private final CoreTmdbClient tmdbClient;
    private final TmdbFullMovieInformationLoader loader;

    public MovieLoadStrategy(CoreTmdbClient tmdbClient, TmdbFullMovieInformationLoader loader) {
        this.tmdbClient = tmdbClient;
        this.loader = loader;
    }


    @Override
    public List<?> loadTmdb(Integer pageNumber) {
        List<Integer> movieIds = tmdbClient.loadMovieIds(pageNumber).getMovieIds().stream().map(MovieIdDto::id).toList();

        return List.of();
    }
}
