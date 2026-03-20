package com.sitefilm.etl.infrastructure.provider.tmdb.response.movie;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.ContentResponse;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.ContentTranslations;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.GenreDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.RelationshipsCountryDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.dictionaries.LanguageResponseDto;
import lombok.Data;

import java.time.LocalDate;
import java.util.List;

@Data
public class MovieDetailsResponseDto implements ContentResponse {
    @JsonProperty("id")
    private Long externalId;
    @JsonProperty("original_title")
    private String originalTitle;
    @JsonProperty("title")
    private String title;
    @JsonProperty("overview")
    private String overview;
    @JsonProperty("status")
    private String status;
    @JsonProperty("genres")
    private List<GenreDto> genres;
    @JsonProperty("budget")
    private Long budget;
    @JsonProperty("release_date")
    private LocalDate releaseDate;
    @JsonProperty("revenue")
    private Long revenue;
    @JsonProperty("runtime")
    private Short duration;
    @JsonProperty("production_countries")
    private List<RelationshipsCountryDto> countries;
    @JsonProperty("spoken_languages")
    private List<LanguageResponseDto> spokenLanguages;
    @JsonProperty("translations")
    private ContentTranslations contentTranslations;
    @JsonProperty("credits")
    private PersonsInMovieResponseDto persons;

    @Override
    public Long getExternalId() {
        return externalId;
    }

    @Override
    public String getOriginalTitle() {
        return originalTitle;
    }

    @Override
    public String getStatus() {
        return status;
    }

    @Override
    public List<GenreDto> getGenres() {
        return genres;
    }

    @Override
    public List<RelationshipsCountryDto> getCountries() {
        return countries;
    }

    @Override
    public ContentTranslations getContentTranslations() {
        return contentTranslations;
    }
}
