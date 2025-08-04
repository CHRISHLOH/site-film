package org.sitefilm.contentservice.controller;

import lombok.RequiredArgsConstructor;
import org.sitefilm.contentservice.dto.main.movie.FullMovieDto;
import org.sitefilm.contentservice.service.MovieForEmbendingService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/ai")
public class UserForEmbendingController {

    private final MovieForEmbendingService service;

    @GetMapping("/test")
    public List<FullMovieDto> getMovieForEmbeding() {
        return service.getMovies();
    }
}
