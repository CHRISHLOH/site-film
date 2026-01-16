package com.sitefilm.etl.dto;

public record PersonTranslationDataDto(
        String locale,
        String name,
        String biography

) {

}
