package com.sitefilm.etl.dto.core.movie;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.sitefilm.etl.dto.core.RelationshipsCountryDto;
import com.sitefilm.etl.dto.dictionaries.GenreDto;
import com.sitefilm.etl.dto.dictionaries.LanguageDto;
import lombok.Data;

import java.time.LocalDate;
import java.util.List;

@Data
public class MovieDetailsDto {
    @JsonProperty("budget")
    private Long budget;
    @JsonProperty("genres")
    private List<Integer> genreIdList;
    @JsonProperty("id")
    private Long externalId;
    @JsonProperty("original_title")
    private String originalTitle;
    @JsonProperty("overview")
    private String overview;
    @JsonProperty("release_date")
    private LocalDate releaseDate;
    @JsonProperty("revenue")
    private Long revenue;
    @JsonProperty("runtime")
    private Long duration;
    @JsonProperty("status")
    private String status;
    @JsonProperty("title")
    private String title;
    @JsonProperty("translations")
    private MovieTranslations movieTranslations;
    @JsonProperty("genres")
    List<GenreDto> genres;
    @JsonProperty("production_countries")
    List<RelationshipsCountryDto> countries;
    @JsonProperty("spoken_languages")
    List<LanguageDto> spokenLanguages;
}
