package com.sitefilm.etl.infrastructure.provider.tmdb.response.person;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.sitefilm.etl.domain.model.PersonCastDto;
import com.sitefilm.etl.domain.model.PersonCrewDto;
import lombok.Data;

import java.util.List;

@Data
public class PersonsInMovieResponseDto {
    @JsonProperty("id")
    private Long id;
    @JsonProperty("cast")
    private List<PersonCastDto> cast;
    @JsonProperty("crew")
    private List<PersonCrewDto> crew;
}
