package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.entity.enums.ContentType;
import com.sitefilm.etl.service.dictionaries.DictionariesDataBaseService;
import com.sitefilm.etl.service.dictionaries.DictionariesLoadStrategy;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;
import java.util.stream.IntStream;

@Service
public class PopularMoviesLoadUseCase {
    private final CoreTmdbClient tmdbClient;
    private final DictionariesLoadStrategy  dictionariesLoadStrategy;
    private final PageProcessor pageProcessor;
    private final DictionariesDataBaseService dictionariesSaveService;
    @Qualifier("pageExecutor")
    private final ExecutorService executorService;

    public PopularMoviesLoadUseCase(CoreTmdbClient tmdbClient, DictionariesLoadStrategy dictionariesLoadStrategy, PageProcessor pageProcessor, DictionariesDataBaseService dictionariesSaveService, @Qualifier("pageExecutor") ExecutorService executorService) {
        this.tmdbClient = tmdbClient;
        this.dictionariesLoadStrategy = dictionariesLoadStrategy;
        this.pageProcessor = pageProcessor;
        this.dictionariesSaveService = dictionariesSaveService;
        this.executorService = executorService;
    }

    public void load (ContentType contentType) {
        DictionariesDto dictionaries = dictionariesLoadStrategy.downloadDictionaries();
        DictionariesDto dictionariesId = dictionariesSaveService.saveDictionaries(dictionaries);

        int countPage = tmdbClient.loadCountPage().total_pages();
        IntStream.range(0, 1)
                .forEach(page ->
                        CompletableFuture.runAsync(() -> pageProcessor.loadTmdb(1, dictionariesId, contentType), executorService).join()
                );
    }
}
