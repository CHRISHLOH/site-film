package com.sitefilm.etl.dto.core;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.sitefilm.etl.dto.dictionaries.GenreDto;
import com.sitefilm.etl.dto.dictionaries.LanguageResponseDto;
import lombok.Data;

import java.util.List;

@Data
public class ContentResponse {
    @JsonProperty("id")
    private Long externalId;
    @JsonProperty("original_title")
    private String originalTitle;
    @JsonProperty("overview")
    private String overview;
    @JsonProperty("status")
    private String status;
    @JsonProperty("genres")
    List<GenreDto> genres;
    @JsonProperty("production_countries")
    List<RelationshipsCountryDto> countries;
    @JsonProperty("spoken_languages")
    List<LanguageResponseDto> spokenLanguages;
}
