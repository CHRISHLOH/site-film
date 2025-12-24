package com.sitefilm.etl.controller;

import com.sitefilm.etl.service.CountriesLoadStrategy;
import com.sitefilm.etl.service.GenresLoadStrategy;
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

    private final CountriesLoadStrategy loadStrategy;
    private final GenresLoadStrategy loadStrategyGenres;

    @GetMapping("/countries")
    public void countries() {
        loadStrategyGenres.loadTmdb().forEach(System.out::println);
    }
}
