package com.sitefilm.etl.infrastructure.provider.tmdb.response.movie;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.MovieIdDto;
import lombok.Data;

import java.util.List;

@Data
public class TmdbMoviePageResponse {
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("results")
    private List<MovieIdDto> movieIds;
}
