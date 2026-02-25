package com.sitefilm.etl.controller;

import com.sitefilm.etl.entity.enums.ContentType;
import com.sitefilm.etl.service.core.PopularMoviesLoadUseCase;
import com.sitefilm.etl.service.dictionaries.CountriesLoadStrategy;
import com.sitefilm.etl.service.dictionaries.GenresLoadStrategy;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/etl")
public class StartEtlController {
    private final PopularMoviesLoadUseCase popularMoviesLoadUseCase;

    @GetMapping("/movies")
    public String loadMovies() {
        popularMoviesLoadUseCase.load(ContentType.MOVIE);
        return "Отработало";
    }

    @GetMapping("/series")
    public String LoadSeries() {
        popularMoviesLoadUseCase.load(ContentType.SERIES);
        return "Отработало";
    }
}
