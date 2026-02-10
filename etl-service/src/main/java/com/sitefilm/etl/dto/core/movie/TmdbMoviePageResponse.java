package com.sitefilm.etl.dto.core.movie;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

@Data
public class TmdbMoviePageResponse {
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("results")
    private List<MovieIdDto> movieIds;
}
