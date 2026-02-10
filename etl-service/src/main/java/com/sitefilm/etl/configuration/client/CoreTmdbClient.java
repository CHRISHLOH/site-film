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
        System.out.println("Запрос на id фильмов");
        return restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getMoviePage())
                        .queryParam("page", page)
                        .build())
                .retrieve()
                .body(TmdbMoviePageResponse.class);
    }

    public MovieDetailsResponseDto loadMovieDetails(Long movieId) {
        System.out.println("Запрос на подгрузку данных одного фильма");
        return restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getMoviesDetails())
                        .queryParam("append_to_response", "translations")
                        .build(movieId))
                .retrieve()
                .body(MovieDetailsResponseDto.class);
    }

    public PersonsInMovieResponseDto loadMovieCast(Long movieId) {
        System.out.println("Запрос на подгруз каста");
        return restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getPersonsCast())
                        .queryParam("append_to_response", "translations")
                        .build(movieId)
                )
                .retrieve()
                .body(PersonsInMovieResponseDto.class);
    }

    public PersonDetailsResponseDto loadPersonDetails(Long personId) {
        System.out.println("Запрос на персон детали");
        return restClient.get()
                .uri(uriBuilder ->
                        uriBuilder.path(urlProperties
                                        .getPersonDetails())
                                .build(personId))
                .retrieve()
                .body(PersonDetailsResponseDto.class);
    }

    public CountPage loadCountPage() {
        System.out.println("Запрос на колво страниц");
        return restClient.get()
                .uri(uriBuilder ->
                        uriBuilder.path(urlProperties.getMoviePage())
                                .build())
                .retrieve()
                .body(CountPage.class);
    }
}
