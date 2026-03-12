package com.sitefilm.etl.controller;

import com.sitefilm.etl.application.usecase.LoadContentUseCase;
import com.sitefilm.etl.domain.model.enums.ContentType;
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
    private final LoadContentUseCase loadContentUseCase;

    @GetMapping("/movies")
    public String loadMovies() {
        loadContentUseCase.load(ContentType.MOVIE);
        return "Отработало";
    }

//    @GetMapping("/series")
//    public String LoadSeries() {
//        popularMoviesLoadUseCase.load(ContentType.SERIES);
//        return "Отработало";
//    }
}
