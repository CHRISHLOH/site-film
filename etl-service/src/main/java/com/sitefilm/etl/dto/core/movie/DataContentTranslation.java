package com.sitefilm.etl.dto.core.movie;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class DataContentTranslation {
    @JsonProperty("overview")
    private String description;
    @JsonProperty("title")
    private String title;
}
