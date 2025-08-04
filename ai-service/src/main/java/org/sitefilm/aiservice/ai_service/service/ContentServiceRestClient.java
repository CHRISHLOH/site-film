package org.sitefilm.aiservice.ai_service.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.aiservice.ai_service.dto.FullMovieDto;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.web.client.RestClient;

import java.util.List;


@RequiredArgsConstructor
public class ContentServiceRestClient {
    private static final ParameterizedTypeReference<List<FullMovieDto>> FULL_MOVIE_TYPE_REFERENCE =
            new ParameterizedTypeReference<>() {};

    private final RestClient restClient;

    public List<FullMovieDto> getContent() {
        return restClient.get()
                .uri("/ai/test")
                .retrieve()
                .body(FULL_MOVIE_TYPE_REFERENCE);
    }
}
