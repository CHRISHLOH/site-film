package com.sitefilm.etl.application.usecase;

import com.sitefilm.etl.application.strategies.MovieLoadStrategy;
import com.sitefilm.etl.domain.model.enums.ContentType;
import org.springframework.stereotype.Service;

@Service
public class LoadContentUseCase {
    private final MovieLoadStrategy movieLoadStrategy;
    private final TmdbDictionariesLoadUseCase tmdbDictionariesLoadUseCase;

    public LoadContentUseCase(MovieLoadStrategy movieLoadStrategy, TmdbDictionariesLoadUseCase tmdbDictionariesLoadUseCase) {
        this.movieLoadStrategy = movieLoadStrategy;
        this.tmdbDictionariesLoadUseCase = tmdbDictionariesLoadUseCase;
    }

    public void load(ContentType contentType) {
        tmdbDictionariesLoadUseCase.loadDictionaries();
        movieLoadStrategy.loadContent(1);
    }

}
