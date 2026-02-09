package com.sitefilm.etl.dto.dictionaries;

import lombok.Data;

@Data
public class LanguageResponseDto {
    private Long id;
    private String iso_639_1;
    private String english_name;
    private String name;
}