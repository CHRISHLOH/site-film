package com.sitefilm.etl.dto.core.person;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class PersonTranslationDto {
    @JsonProperty("iso_3166_1")
    private String isoCode;

    private PersonData personData;
}
