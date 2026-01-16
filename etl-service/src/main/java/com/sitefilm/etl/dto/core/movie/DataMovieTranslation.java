package com.sitefilm.etl.dto.core.movie;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class DataMovieTranslation {
    @JsonProperty("overview")
    private String description;
    @JsonProperty("title")
    private String title;
}
