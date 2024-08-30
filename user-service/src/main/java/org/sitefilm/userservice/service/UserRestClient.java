package org.sitefilm.userservice.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.dto.MovieDto;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.web.client.RestClient;

import java.util.List;

@RequiredArgsConstructor
public class UserRestClient {

    private static final ParameterizedTypeReference<List<MovieDto>> MOVIE_TYPE_REFERENCE =
            new ParameterizedTypeReference<>() {};

    private final RestClient restClient;

    public List<MovieDto> getAllMovies() {
        return restClient.get()
                .uri("content-api/movies")
                .retrieve()
                .body(MOVIE_TYPE_REFERENCE);
    }

    public List<MovieDto> getTopRecommendedMovies() {
        return restClient.get()
                .uri("/admin/movies/top")
                .retrieve()
                .body(MOVIE_TYPE_REFERENCE);
    }
}
