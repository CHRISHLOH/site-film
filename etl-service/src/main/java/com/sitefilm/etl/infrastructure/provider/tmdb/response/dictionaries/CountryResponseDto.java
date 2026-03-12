package com.sitefilm.etl.infrastructure.provider.tmdb.response.dictionaries;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class CountryResponseDto {

    @JsonProperty("iso_3166_1")
    private String iso_3166_1;

    @JsonProperty("english_name")
    private String englishName;

    @JsonProperty("native_name")
    private String nativeName;

    @JsonIgnore
    private String locale;
}
