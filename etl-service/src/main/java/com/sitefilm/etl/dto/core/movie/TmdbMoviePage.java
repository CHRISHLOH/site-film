package com.sitefilm.etl.dto.core.movie;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

@Data
public class TmdbMoviePage {
    @JsonProperty("page")
    private Integer page;
    @JsonProperty("result")
    private List<MovieIdDto> movieIds;
}
