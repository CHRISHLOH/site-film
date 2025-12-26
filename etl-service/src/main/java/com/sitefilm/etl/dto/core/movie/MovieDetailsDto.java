package com.sitefilm.etl.dto.core.movie;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.time.LocalDate;
import java.util.List;

@Data
public class MovieDetailsDto {
    @JsonProperty("budget")
    private Integer budget;
    @JsonProperty("genres")
    private List<Integer> genreIdList;
    @JsonProperty("id")
    private Integer externalId;
    @JsonProperty("original_title")
    private String originalTitle;
    @JsonProperty("overview")
    private String overview;
    @JsonProperty("release_date")
    private LocalDate releaseDate;
    @JsonProperty("revenue")
    private Integer revenue;
    @JsonProperty("runtime")
    private Integer duration;
    @JsonProperty("status")
    private String status;
    @JsonProperty("title")
    private String title;
}
