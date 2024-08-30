package org.sitefilm.adminservice.service;

import lombok.RequiredArgsConstructor;

import org.sitefilm.adminservice.dto.moviedto.MovieDto;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.MediaType;
import org.springframework.web.client.RestClient;

import java.util.List;


@RequiredArgsConstructor
public class AdminMovieRestClient {

    private static final ParameterizedTypeReference<List<MovieDto>> MOVIE_TYPE_REFERENCE =
            new ParameterizedTypeReference<>() {};

    private final RestClient restClient;

    public List<MovieDto> getAllMovies() {
        return restClient.get()
                .uri("content-api/movies")
                .retrieve()
                .body(MOVIE_TYPE_REFERENCE);
    }

    public MovieDto getMovieById(int id) {
        return restClient.get()
                .uri("content-api/movies/{id}", id)
                .retrieve()
                .body(MovieDto.class);

    }

    public MovieDto createMovie (MovieDto movieDto) {
        return restClient.post()
                .uri("content-api/movies/create")
                .contentType(MediaType.APPLICATION_JSON)
                .body(movieDto)
                .retrieve()
                .body(MovieDto.class);
    }

    public MovieDto updateMovie(MovieDto movieDto) {
        return restClient.post()
                .uri("content-api/movies/update")
                .contentType(MediaType.APPLICATION_JSON)
                .body(movieDto)
                .retrieve()
                .body(MovieDto.class);
    }

    public void deleteMovie(int id) {
        restClient.delete()
                .uri("content-api/movies/{id}", id)
                .retrieve()
                .body(String.class);
    }
}
