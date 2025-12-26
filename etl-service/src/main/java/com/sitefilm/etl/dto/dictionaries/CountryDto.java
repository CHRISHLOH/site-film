package com.sitefilm.etl.dto.dictionaries;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class CountryDto {


    @JsonProperty("iso_3166_1")
    private String isoCode;

    @JsonProperty("english_name")
    private String englishName;

    @JsonProperty("native_name")
    private String nativeName;

    @JsonIgnore
    private String locale;
}
