package org.sitefilm.aiservice.ai_service.controller;

import org.sitefilm.aiservice.ai_service.dto.FullMovieDto;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/entity")
public class EntityController {
    @GetMapping
    public void getMovies(List<FullMovieDto> listMovies){

    }
}
