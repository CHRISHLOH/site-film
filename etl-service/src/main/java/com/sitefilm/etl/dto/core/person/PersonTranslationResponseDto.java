package com.sitefilm.etl.dto.core.person;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.Getter;

import java.util.List;

@Data
@Getter
public class PersonTranslationResponseDto {
    @JsonProperty("id")
    private Long id;
    @JsonProperty("translations")
    private List<PersonTranslationDto> translations;
}
