package org.sitefilm.userservice.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.dto.FullMovieDto;
import org.sitefilm.userservice.dto.MinimalMovieDto;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.data.domain.Pageable;
import org.springframework.web.client.RestClient;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.Collections;
import java.util.List;

@RequiredArgsConstructor
public class UserRestClient {

    private static final ParameterizedTypeReference<List<MinimalMovieDto>> MINIMAL_MOVIE_TYPE_REFERENCE =
            new ParameterizedTypeReference<>() {};

    private final RestClient restClient;

    public FullMovieDto getMovieById(Long id) {
        return restClient.get()
                .uri("content-api/movies/{id}", id)
                .retrieve()
                .body(FullMovieDto.class);
    }

    public List<MinimalMovieDto> getListOfMovieInTheMainPage(Pageable pageable) {
        // Формирование URI с параметрами пагинации
        URI uri = UriComponentsBuilder.fromUriString("content-api/movies")
                .queryParam("page", pageable.getPageNumber())
                .queryParam("size", pageable.getPageSize())
                .build()
                .toUri();
        // Вызов внешнего сервиса
        return  restClient.get()
                .uri(uri)
                .retrieve()
                .body(MINIMAL_MOVIE_TYPE_REFERENCE);
    }
}
