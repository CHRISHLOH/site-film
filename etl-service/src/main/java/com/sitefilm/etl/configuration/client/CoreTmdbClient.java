package com.sitefilm.etl.configuration.client;

import com.sitefilm.etl.configuration.TmdbUrlProperties;
import com.sitefilm.etl.dto.core.movie.CountPage;
import com.sitefilm.etl.dto.core.person.PersonDetailsDto;
import com.sitefilm.etl.dto.core.person.PersonsInMovieDto;
import com.sitefilm.etl.dto.core.movie.ResponseMovieTranslationDto;
import com.sitefilm.etl.dto.core.movie.TmdbMoviePage;
import com.sitefilm.etl.dto.core.movie.MovieDetailsDto;
import com.sitefilm.etl.dto.core.person.ResponsePersonTranslationDto;
import org.springframework.web.client.RestClient;

public class CoreTmdbClient {

    private final RestClient restClient;
    private final TmdbUrlProperties urlProperties;

    public CoreTmdbClient(RestClient restClient, TmdbUrlProperties urlProperties) {
        this.restClient = restClient;
        this.urlProperties = urlProperties;
    }

    public TmdbMoviePage loadMovieIds(Integer page) {
        return restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getMoviePage())
                        .queryParam("page", page)
                        .build())
                .retrieve()
                .body(TmdbMoviePage.class);
    }

    public MovieDetailsDto loadMovieDetails(Long movieId) {
        return restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getMoviesDetails())
                        .queryParam("movie_id", movieId)
                        .queryParam("append_to_response", "translations")
                        .build())
                .retrieve()
                .body(MovieDetailsDto.class);
    }

    public ResponseMovieTranslationDto loadMovieTranslation(Long movieId) {
        return restClient.get()
                .uri(uriBuilder ->
                        uriBuilder.path(urlProperties.getMovieTranslation())
                                .build(movieId))
                .retrieve()
                .body(ResponseMovieTranslationDto.class);

    }

    public PersonsInMovieDto loadMovieCast(Long movieId) {
        return restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getPersonsCast())
                        .queryParam("append_to_response", "translations")
                        .build(movieId)
                )
                .retrieve()
                .body(PersonsInMovieDto.class);
    }

    public ResponsePersonTranslationDto loadPersonTranslation(Long personId) {
        return restClient.get()
                .uri(uriBuilder ->
                        uriBuilder.path(urlProperties
                                .getPersonTranslations())
                                .build(personId))
                .retrieve()
                .body(ResponsePersonTranslationDto.class);
    }

    public PersonDetailsDto loadPersonDetails(Long personId) {
        return restClient.get()
                .uri(uriBuilder ->
                        uriBuilder.path(urlProperties
                                        .getPersonTranslations())
                                .build(personId))
                .retrieve()
                .body(PersonDetailsDto.class);
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
