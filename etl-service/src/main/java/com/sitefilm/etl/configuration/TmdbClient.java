package com.sitefilm.etl.configuration;

import com.sitefilm.etl.dto.CareerDto;
import com.sitefilm.etl.dto.CountryDto;
import com.sitefilm.etl.dto.GenreDto;
import com.sitefilm.etl.dto.LanguageDto;
import lombok.RequiredArgsConstructor;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.web.client.RestClient;

import java.util.List;

@RequiredArgsConstructor
public class TmdbClient {

    private static final ParameterizedTypeReference<List<CountryDto>> COUNTRY_DTO_TYPE_REFERENCE = new ParameterizedTypeReference<>() {};
    private static final ParameterizedTypeReference<List<GenreDto>> GENRE_DTO_TYPE_REFERENCE = new ParameterizedTypeReference<>() {};
    private static final ParameterizedTypeReference<List<LanguageDto>> LANGUAGE_DTO_TYPE_REFERENCE = new ParameterizedTypeReference<>() {};
    private static final ParameterizedTypeReference<List<CareerDto>> CAREER_DTO_TYPE_REFERENCE = new ParameterizedTypeReference<>() {};
    private final RestClient restClient;
    private final TmdbUrlProperties urlProperties;

    public List<CountryDto> getCountries(String locale){
        return restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getCountries())
                        .queryParam("locale", locale)
                        .build())
                .retrieve()
                .body(COUNTRY_DTO_TYPE_REFERENCE);
    }

    public List<GenreDto> getGenreMovies(String language){
        return  restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getGenreMovies())
                        .queryParam("language", language)
                        .build())
                .retrieve()
                .body(GENRE_DTO_TYPE_REFERENCE);
    }

    public List<GenreDto> getGenreSeries(String language){
        return  restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getGenreMovies())
                        .queryParam("language", language)
                        .build())
                .retrieve()
                .body(GENRE_DTO_TYPE_REFERENCE);
    }

    public List<LanguageDto> getLanguages(){
        return restClient.get()
                .uri(urlProperties.getLanguages())
                .retrieve()
                .body(LANGUAGE_DTO_TYPE_REFERENCE);
    }

    public List<CareerDto> getCareers(){
        return restClient.get()
                .uri(urlProperties.getLanguages())
                .retrieve()
                .body(CAREER_DTO_TYPE_REFERENCE);
    }
}
