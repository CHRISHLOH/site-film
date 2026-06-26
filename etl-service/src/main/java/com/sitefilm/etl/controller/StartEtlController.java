package com.sitefilm.etl.controller;

import com.sitefilm.etl.application.usecase.LoadContentUseCase;
import com.sitefilm.etl.domain.model.content.enums.LoadContentType;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/etl")
public class StartEtlController {
    private final LoadContentUseCase loadContentUseCase;

    @PostMapping("/movies")
    public String loadMovies() {
        loadContentUseCase.loadAll(LoadContentType.TMDB_MOVIE);
        return "Отработало";
    }

    @PostMapping("/movie/{page}")
    public String loadMovie(@PathVariable("page") int page) {
        loadContentUseCase.loadOne(LoadContentType.TMDB_MOVIE,  page);
        return "Отработало";
    }
// TODO:
//    @GetMapping("/series")
//    public String LoadSeries() {
//        popularMoviesLoadUseCase.loadAll(ContentType.SERIES);
//        return "Отработало";
//    }
}
