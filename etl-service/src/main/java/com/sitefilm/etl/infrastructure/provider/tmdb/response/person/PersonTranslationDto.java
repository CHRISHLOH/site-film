package com.sitefilm.etl.infrastructure.provider.tmdb.response.person;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.PersonData;
import lombok.Data;

@Data
public class PersonTranslationDto {
    @JsonProperty("english_name")
    private String englishName;
    @JsonProperty("iso_3166_1")
    private String iso_3166_1;
    @JsonProperty("iso_639_1")
    private String iso_639_1;
    @JsonProperty("data")
    private PersonData personData;
}
