package com.sitefilm.etl.application.usecase;

import com.sitefilm.etl.application.strategies.ContentLoadStrategy;
import com.sitefilm.etl.domain.model.content.enums.LoadContentType;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.TmdbMovieAdapter;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class LoadContentUseCase {
    private final LoadStrategyFactory loadContentFactory;
    private final TmdbDictionariesLoadUseCase tmdbDictionariesLoadUseCase;
    private final TmdbMovieAdapter tmdbMovieAdapter;

    public LoadContentUseCase(LoadStrategyFactory loadContentFactory, TmdbDictionariesLoadUseCase tmdbDictionariesLoadUseCase, TmdbMovieAdapter tmdbMovieAdapter) {
        this.loadContentFactory = loadContentFactory;
        this.tmdbDictionariesLoadUseCase = tmdbDictionariesLoadUseCase;
        this.tmdbMovieAdapter = tmdbMovieAdapter;
    }

    public void loadAll(LoadContentType loadContentType) {
        tmdbDictionariesLoadUseCase.loadDictionaries();
        Short countPage = tmdbMovieAdapter.countPage();
        ContentLoadStrategy loadStrategy = loadContentFactory.getStrategy(loadContentType);
        for (int i =  1; i < countPage; i++) {
            List<Long> ids = tmdbMovieAdapter.fetchPopularIds(i);
            for (Long id : ids) {
                try {
                    loadStrategy.loadContent(id, loadContentType);
                } catch (RuntimeException e) {
                    log.error(e.getMessage());
                }
            }
        }
    }

    public void loadOne(LoadContentType loadContentType, int page) {
        tmdbDictionariesLoadUseCase.loadDictionaries();
        List<Long> ids = tmdbMovieAdapter.fetchPopularIds(page);
        ContentLoadStrategy loadStrategy = loadContentFactory.getStrategy(loadContentType);
        for (Long id : ids) {
            try {
                loadStrategy.loadContent(id,  loadContentType);
            } catch (RuntimeException e) {
                log.error(e.getMessage());
            }
        }
    }
}
