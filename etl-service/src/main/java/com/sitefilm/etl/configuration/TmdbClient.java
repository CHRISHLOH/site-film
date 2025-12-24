package com.sitefilm.etl.configuration;

import com.sitefilm.etl.dto.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.web.client.RestClient;

import java.util.List;

@Slf4j
@RequiredArgsConstructor
public class TmdbClient {

    private static final ParameterizedTypeReference<List<CountryDto>> COUNTRY_DTO_TYPE_REFERENCE = new ParameterizedTypeReference<>() {};
    private static final ParameterizedTypeReference<List<LanguageDto>> LANGUAGE_DTO_TYPE_REFERENCE = new ParameterizedTypeReference<>() {};
    private static final ParameterizedTypeReference<List<CareerDto>> CAREER_DTO_TYPE_REFERENCE = new ParameterizedTypeReference<>() {};
    private final RestClient restClient;
    private final TmdbUrlProperties urlProperties;

    public List<CountryDto> getCountries(String language){
        return restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getCountries())
                        .queryParam("language", language)
                        .build())
                .retrieve()
                .body(COUNTRY_DTO_TYPE_REFERENCE);
    }

    public GenreResponseDto getGenreMovies(String language){
        return  restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getGenreMovies())
                        .queryParam("language", language)
                        .build())
                .retrieve()
                .body(GenreResponseDto.class);
    }

    public GenreResponseDto getGenreSeries(String language){
        return  restClient.get()
                .uri(uriBuilder -> uriBuilder
                        .path(urlProperties.getGenreMovies())
                        .queryParam("language", language)
                        .build())
                .retrieve()
                .body(GenreResponseDto.class);
    }

    public List<LanguageDto> getLanguages(){
        return restClient.get()
                .uri(urlProperties.getLanguages())
                .retrieve()
                .body(LANGUAGE_DTO_TYPE_REFERENCE);
    }

    public List<CareerDto> getCareers(){
        return restClient.get()
                .uri(urlProperties.getJobs())
                .retrieve()
                .body(CAREER_DTO_TYPE_REFERENCE);
    }
}
