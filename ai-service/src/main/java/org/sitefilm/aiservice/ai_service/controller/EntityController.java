package org.sitefilm.aiservice.ai_service.controller;

import lombok.RequiredArgsConstructor;
import org.sitefilm.aiservice.ai_service.dto.FullMovieDto;
import org.sitefilm.aiservice.ai_service.service.AIContentService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/entity")
@RequiredArgsConstructor
public class EntityController {

    private final AIContentService aiContentService;

    @PostMapping
    public String getMovies(){
        return aiContentService.createEmbedding();
    }
}
