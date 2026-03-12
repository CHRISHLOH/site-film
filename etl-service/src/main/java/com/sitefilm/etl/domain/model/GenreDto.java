package com.sitefilm.etl.domain.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class GenreDto {
    @JsonProperty("id")
    private Integer external_id;
    @JsonProperty("name")
    private String name;
    @JsonIgnore
    private String language;
}
