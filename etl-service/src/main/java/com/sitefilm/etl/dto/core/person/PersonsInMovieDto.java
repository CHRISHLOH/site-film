package com.sitefilm.etl.dto.core.person;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

@Data
public class PersonsInMovieDto {
    @JsonProperty("id")
    private Long id;
    @JsonProperty("cast")
    private List<PersonCastDto> cast;
    @JsonProperty("crew")
    private List<PersonCrewDto> crew;
}
