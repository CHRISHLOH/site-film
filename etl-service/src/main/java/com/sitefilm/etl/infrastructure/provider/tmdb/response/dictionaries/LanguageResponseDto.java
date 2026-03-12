package com.sitefilm.etl.infrastructure.provider.tmdb.response.dictionaries;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class LanguageResponseDto {
    @JsonProperty("iso_639_1")
    private String iso_639_1;
    @JsonProperty("english_name")
    private String englishName;
    @JsonProperty("name")
    private String name;
}