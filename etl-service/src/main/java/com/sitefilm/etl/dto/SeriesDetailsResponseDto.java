package com.sitefilm.etl.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.sitefilm.etl.dto.core.ContentResponse;
import com.sitefilm.etl.dto.core.RelationshipsCountryDto;
import com.sitefilm.etl.dto.core.movie.ContentTranslations;
import com.sitefilm.etl.dto.dictionaries.GenreDto;
import com.sitefilm.etl.dto.dictionaries.LanguageResponseDto;
import lombok.Data;

import java.util.List;

@Data
public class SeriesDetailsResponseDto implements ContentResponse {
    @JsonProperty("external_id")
    private Long externalId;
    @JsonProperty("first_air_date")
    private String firstAirDate;
    @JsonProperty("genres")
    private List<GenreDto> genres;
    @JsonProperty("original_name")
    private String originalName;
    @JsonProperty("number_of_episodes")
    private Short numberOfEpisodes;
    @JsonProperty("number_of_seasons")
    private Short numberOfSeasons;
    @JsonProperty("status")
    private String status;
    @JsonProperty("production_countries")
    private List<RelationshipsCountryDto> countries;
    @JsonProperty("spoken_languages")
    private List<LanguageResponseDto> spokenLanguages;
    @JsonProperty("translations")
    private ContentTranslations contentTranslations;
    @JsonProperty("type")
    private String type;
    @JsonProperty("seasons")
    private List<SeasonId> seasonIds;

    @Override
    public Long getExternalId() {
        return externalId;
    }

    @Override
    public String getOriginalTitle() {
        return originalName;
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
