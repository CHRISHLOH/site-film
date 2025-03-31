package org.sitefilm.userservice.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.dto.main.UserProfileDto;
import org.sitefilm.userservice.dto.main.movie.FullMovieDto;
import org.sitefilm.userservice.dto.main.movie.MinimalMovieForListDto;
import org.sitefilm.userservice.dto.main.person.FullPersonDto;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.data.domain.Pageable;
import org.springframework.web.client.RestClient;

import java.util.List;

@RequiredArgsConstructor
public class UserRestClient {

    private static final ParameterizedTypeReference<List<MinimalMovieForListDto>> MINIMAL_MOVIE_TYPE_REFERENCE =
            new ParameterizedTypeReference<>() {};

    private final RestClient restClient;

    public FullMovieDto getMovieById(Long id) {
        return restClient.get()
                .uri("content-api/movies/{id}", id)
                .retrieve()
                .body(FullMovieDto.class);
    }

    public List<MinimalMovieForListDto> getListOfMovieInTheMainPage(Pageable pageable) {
        return restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path("/content-api/movies")
                        .queryParam("page", pageable.getPageNumber())
                        .queryParam("size", pageable.getPageSize())
                        .build())
                .retrieve()
                .body(MINIMAL_MOVIE_TYPE_REFERENCE);
    }

    public FullPersonDto getFullPersonById(Long id) {
        return restClient.get()
                .uri("content-api/persons/{id}", id)
                .retrieve()
                .body(FullPersonDto.class);
    }

    public UserProfileDto getUserProfileInfo() {
        return restClient.get()
                .uri("content-api/user")
                .retrieve()
                .body(UserProfileDto.class);
    }
}
