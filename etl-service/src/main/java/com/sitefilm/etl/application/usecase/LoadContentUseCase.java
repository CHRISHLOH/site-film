package com.sitefilm.etl.application.usecase;

import com.sitefilm.etl.application.strategies.MovieLoadStrategy;
import com.sitefilm.etl.domain.model.content.enums.ContentType;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.TmdbMovieAdapter;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LoadContentUseCase {
    private final MovieLoadStrategy movieLoadStrategy;
    private final TmdbDictionariesLoadUseCase tmdbDictionariesLoadUseCase;
    private final TmdbMovieAdapter tmdbMovieAdapter;

    public LoadContentUseCase(MovieLoadStrategy movieLoadStrategy, TmdbDictionariesLoadUseCase tmdbDictionariesLoadUseCase, TmdbMovieAdapter tmdbMovieAdapter) {
        this.movieLoadStrategy = movieLoadStrategy;
        this.tmdbDictionariesLoadUseCase = tmdbDictionariesLoadUseCase;
        this.tmdbMovieAdapter = tmdbMovieAdapter;
    }

    public void load(ContentType contentType) {
        tmdbDictionariesLoadUseCase.loadDictionaries();
        Short countPage = tmdbMovieAdapter.countPage();
        for (int i =  1; i < 10; i++) {
            List<Long> ids = tmdbMovieAdapter.fetchPopularIds(i);
            ids.forEach(movieLoadStrategy::loadContent);
        }
    }
}
