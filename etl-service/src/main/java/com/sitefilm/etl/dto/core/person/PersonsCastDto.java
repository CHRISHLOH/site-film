package com.sitefilm.etl.dto.core.person;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

@Data
public class PersonsCastDto {
    @JsonProperty("id")
    private Long id;
    @JsonProperty("cast")
    List<PersonIdDto> cast;
    @JsonProperty("crew")
    List<PersonIdDto> crew;
}
