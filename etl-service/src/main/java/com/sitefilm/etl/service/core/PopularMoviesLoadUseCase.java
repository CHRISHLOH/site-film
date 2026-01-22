package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.service.dictionaries.DictionariesLoadStrategy;
import org.springframework.stereotype.Service;

import java.util.concurrent.CompletableFuture;
import java.util.stream.IntStream;

@Service
public class PopularMoviesLoadUseCase {
    private final CoreTmdbClient tmdbClient;
    private final DictionariesLoadStrategy  dictionariesLoadStrategy;
    private final PageProcessor pageProcessor;

    public PopularMoviesLoadUseCase(CoreTmdbClient tmdbClient, DictionariesLoadStrategy dictionariesLoadStrategy, PageProcessor pageProcessor) {
        this.tmdbClient = tmdbClient;
        this.dictionariesLoadStrategy = dictionariesLoadStrategy;
        this.pageProcessor = pageProcessor;
    }

    public void load (){
        DictionariesDto dictionaries = dictionariesLoadStrategy.downloadDictionaries();
        int countPage = tmdbClient.loadCountPage().total_pages();
        IntStream.range(0, countPage)
                .forEach(page ->
                        CompletableFuture.runAsync(() -> pageProcessor.loadTmdb(page, dictionaries))
                );

    }
}
