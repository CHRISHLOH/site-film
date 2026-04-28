package com.sitefilm.etl.application.usecase;

import com.sitefilm.etl.application.strategies.MovieLoadStrategy;
import com.sitefilm.etl.domain.model.content.enums.ContentType;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.TmdbMovieAdapter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
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
        for (int i =  1; i < 2; i++) {
            List<Long> ids = tmdbMovieAdapter.fetchPopularIds(15);
            for (Long id : ids) {
                try {
                    movieLoadStrategy.loadContent(id);
                } catch (RuntimeException e) {
                    log.error(e.getMessage());
                }
            }
        }
    }
}
