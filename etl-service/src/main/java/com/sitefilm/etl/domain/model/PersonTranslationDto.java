package com.sitefilm.etl.domain.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class PersonTranslationDto {
    @JsonProperty("english_name")
    private String englishName;
    @JsonProperty("iso_3166_1")
    private String isoCode;
    @JsonProperty("data")
    private PersonData personData;
}
