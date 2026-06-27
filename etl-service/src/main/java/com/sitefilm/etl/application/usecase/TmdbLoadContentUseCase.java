package com.sitefilm.etl.application.usecase;

import com.sitefilm.etl.application.strategies.ContentLoadStrategy;
import com.sitefilm.etl.application.model.enums.LoadContentType;
import com.sitefilm.etl.domain.port.api.ContentProviderPort;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.TmdbContentAdapterFactory;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;

@Slf4j
@Service
public class TmdbLoadContentUseCase {
    private final LoadStrategyFactory loadContentFactory;
    private final TmdbDictionariesLoadUseCase tmdbDictionariesLoadUseCase;
    private final TmdbContentAdapterFactory tmdbContentAdapterFactory;

    public TmdbLoadContentUseCase(LoadStrategyFactory loadContentFactory, TmdbDictionariesLoadUseCase tmdbDictionariesLoadUseCase, TmdbContentAdapterFactory tmdbContentAdapterFactory) {
        this.loadContentFactory = loadContentFactory;
        this.tmdbDictionariesLoadUseCase = tmdbDictionariesLoadUseCase;
        this.tmdbContentAdapterFactory = tmdbContentAdapterFactory;
    }

    public void loadAll(LoadContentType loadContentType) {
        tmdbDictionariesLoadUseCase.loadDictionaries();
        ContentProviderPort provider = tmdbContentAdapterFactory.provider(loadContentType);
        Short countPage = provider.countPage();
        ContentLoadStrategy loadStrategy = loadContentFactory.getStrategy(loadContentType);
        for (int i =  1; i < countPage; i++) {
            List<Long> ids = provider.fetchPopularIds(i);
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
        ContentProviderPort provider = tmdbContentAdapterFactory.provider(loadContentType);
        List<Long> ids = provider.fetchPopularIds(page);
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
