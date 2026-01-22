package com.sitefilm.etl.dto.core.person;

import lombok.Data;

import java.util.List;

@Data
public class PersonTranslations {
    private List<PersonTranslationDto> translations;
}
