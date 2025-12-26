package com.sitefilm.etl.dto.core.person;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class PersonData {
    @JsonProperty("biography")
    private String biography;
    @JsonProperty("name")
    private String name;
}
