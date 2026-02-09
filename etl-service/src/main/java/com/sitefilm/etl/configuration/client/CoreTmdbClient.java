package com.sitefilm.etl.configuration.client;

import com.sitefilm.etl.configuration.TmdbUrlProperties;
import com.sitefilm.etl.dto.core.movie.CountPage;
import com.sitefilm.etl.dto.core.person.PersonDetailsResponseDto;
import com.sitefilm.etl.dto.core.person.PersonsInMovieResponseDto;
import com.sitefilm.etl.dto.core.movie.ResponseMovieTranslationDto;
import com.sitefilm.etl.dto.core.movie.TmdbMoviePageResponse;
import com.sitefilm.etl.dto.core.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.dto.core.person.PersonTranslationResponseDto;
import org.springframework.web.client.RestClient;

public class CoreTmdbClient {

    private final RestClient restClient;
    private final TmdbUrlProperties urlProperties;

    public CoreTmdbClient(RestClient restClient, TmdbUrlProperties urlProperties) {
        this.restClient = restClient;
        this.urlProperties = urlProperties;
    }

    public TmdbMoviePageResponse loadMovieIds(Integer page) {
        return restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getMoviePage())
                        .queryParam("page", page)
                        .build())
                .retrieve()
                .body(TmdbMoviePageResponse.class);
    }

    public MovieDetailsResponseDto loadMovieDetails(Long movieId) {
        return restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getMoviesDetails())
                        .queryParam("movie_id", movieId)
                        .queryParam("append_to_response", "translations")
                        .build())
                .retrieve()
                .body(MovieDetailsResponseDto.class);
    }

    public ResponseMovieTranslationDto loadMovieTranslation(Long movieId) {
        return restClient.get()
                .uri(uriBuilder ->
                        uriBuilder.path(urlProperties.getMovieTranslation())
                                .build(movieId))
                .retrieve()
                .body(ResponseMovieTranslationDto.class);

    }

    public PersonsInMovieResponseDto loadMovieCast(Long movieId) {
        return restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getPersonsCast())
                        .queryParam("append_to_response", "translations")
                        .build(movieId)
                )
                .retrieve()
                .body(PersonsInMovieResponseDto.class);
    }

    public PersonTranslationResponseDto loadPersonTranslation(Long personId) {
        return restClient.get()
                .uri(uriBuilder ->
                        uriBuilder.path(urlProperties
                                .getPersonTranslations())
                                .build(personId))
                .retrieve()
                .body(PersonTranslationResponseDto.class);
    }

    public PersonDetailsResponseDto loadPersonDetails(Long personId) {
        return restClient.get()
                .uri(uriBuilder ->
                        uriBuilder.path(urlProperties
                                        .getPersonTranslations())
                                .build(personId))
                .retrieve()
                .body(PersonDetailsResponseDto.class);
    }

    public CountPage loadCountPage() {
        return restClient.get()
                .uri(uriBuilder ->
                        uriBuilder.path(urlProperties.getMoviePage())
                                .build())
                .retrieve()
                .body(CountPage.class);
    }
}
