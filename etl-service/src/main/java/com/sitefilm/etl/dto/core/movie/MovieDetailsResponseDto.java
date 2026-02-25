package com.sitefilm.etl.dto.core.movie;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.sitefilm.etl.dto.core.ContentResponse;
import com.sitefilm.etl.dto.core.RelationshipsCountryDto;
import com.sitefilm.etl.dto.dictionaries.GenreDto;
import com.sitefilm.etl.dto.dictionaries.LanguageResponseDto;
import lombok.Data;

import java.time.LocalDate;
import java.util.List;

@Data
public class MovieDetailsResponseDto implements ContentResponse {
    @JsonProperty("id")
    private Long externalId;
    @JsonProperty("original_title")
    private String originalTitle;
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
