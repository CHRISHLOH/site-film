package com.sitefilm.etl.infrastructure.provider.tmdb.response.movie;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonCastDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonCrewDto;
import lombok.Data;

import java.util.List;

@Data
public class PersonsInMovieResponseDto {
    @JsonProperty("cast")
    private List<PersonCastDto> cast;
    @JsonProperty("crew")
    private List<PersonCrewDto> crew;
}
