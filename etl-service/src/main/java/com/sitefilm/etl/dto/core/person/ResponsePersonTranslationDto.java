package com.sitefilm.etl.dto.core.person;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

@Data
public class ResponsePersonTranslationDto {
    @JsonProperty("id")
    private Long id;
    @JsonProperty("translations")
    private List<PersonTranslationDto> translations;
}
