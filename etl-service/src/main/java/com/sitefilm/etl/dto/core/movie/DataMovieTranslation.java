package com.sitefilm.etl.dto.core.movie;

import com.fasterxml.jackson.annotation.JsonProperty;

public class DataMovieTranslation {
    @JsonProperty("overview")
    private String description;
    @JsonProperty("title")
    private String title;
}
