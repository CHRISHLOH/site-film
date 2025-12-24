package com.sitefilm.etl.dto;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.ToString;

@ToString
@Data
public class GenreDto {
    @JsonProperty("id")
    Integer external_id;
    @JsonProperty("name")
    String name;

    String language;
}
