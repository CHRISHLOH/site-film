package com.sitefilm.etl.infrastructure.provider.tmdb.client;

import com.sitefilm.etl.configuration.TmdbUrlProperties;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.CountPageResponse;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonDetailsResponseDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.PersonsInMovieResponseDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.TmdbMoviePageResponse;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.series.SeriesResponseDto;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.client.RestClient;

@Slf4j
public class CoreTmdbClient {
    private final RestClient restClient;
    private final TmdbUrlProperties urlProperties;

    public CoreTmdbClient(RestClient restClient, TmdbUrlProperties urlProperties) {
        this.restClient = restClient;
        this.urlProperties = urlProperties;
    }

    public TmdbMoviePageResponse loadMovieIds(Integer page) {
        log.info("Запрос id фильмов, page={}", page);
        return restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getMoviePage())
                        .queryParam("page", page)
                        .build())
                .retrieve()
                .body(TmdbMoviePageResponse.class);
    }

    public MovieDetailsResponseDto loadMovieDetails(Long movieId) {
        log.info("Запрос на данные из фильма с id={}", movieId);
        return restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getMoviesDetails())
                        .queryParam("append_to_response", "translations,credits")
                        .build(movieId))
                .retrieve()
                .body(MovieDetailsResponseDto.class);
    }

    public PersonsInMovieResponseDto loadMovieCast(Long movieId) {
        log.info("Запрос на погдруз каста фильма с id={}", movieId);
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
        return restClient.get()
                .uri(uriBuilder ->
                        uriBuilder
                                .path(urlProperties.getPersonDetails())
                                .queryParam("append_to_response", "translations")
                                .build(personId))
                .retrieve()
                .body(PersonDetailsResponseDto.class);
    }

    public CountPageResponse loadCountPage() {
        log.info("Запрос на кол-во страниц");
        return restClient.get()
                .uri(uriBuilder ->
                        uriBuilder.path(urlProperties.getMoviePage())
                                .build())
                .retrieve()
                .body(CountPageResponse.class);
    }

//    public SeriesResponseDto loadSeriesDetails(Long seriesId) {
//        return restClient.get()
//                .uri(uriBuilder ->
//                        uriBuilder.path())
//    }
}
