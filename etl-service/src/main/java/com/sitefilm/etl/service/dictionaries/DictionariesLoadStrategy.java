package com.sitefilm.etl.service.dictionaries;

import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.entity.directories.Career;
import com.sitefilm.etl.entity.directories.Country;
import com.sitefilm.etl.entity.directories.Genre;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;

@Component
public class DictionariesLoadStrategy {
    private final CareersLoadStrategy careersLoadStrategy;
    private final CountriesLoadStrategy countriesLoadStrategy;
    private final GenresLoadStrategy genresLoadStrategy;
    private final ExecutorService executorService;

    public DictionariesLoadStrategy(CareersLoadStrategy careersLoadStrategy, CountriesLoadStrategy countriesLoadStrategy, GenresLoadStrategy genresLoadStrategy, ExecutorService executorService) {
        this.careersLoadStrategy = careersLoadStrategy;
        this.countriesLoadStrategy = countriesLoadStrategy;
        this.genresLoadStrategy = genresLoadStrategy;
        this.executorService = executorService;
    }

    public DictionariesDto downloadDictionaries() {
        CompletableFuture<List<Career>> careers = CompletableFuture.supplyAsync(careersLoadStrategy::loadTmdb);
        CompletableFuture<List<Country>> countries = CompletableFuture.supplyAsync(countriesLoadStrategy::loadTmdb);
        CompletableFuture<List<Genre>> genres = CompletableFuture.supplyAsync(genresLoadStrategy::loadTmdb);

        CompletableFuture.allOf(careers, countries, genres).join();

        List<Career> careerList = careers.join();
        List<Country> countryList = countries.join();
        List<Genre> genreList = genres.join();

        return new DictionariesDto(countryList, careerList, genreList);
    }
}
