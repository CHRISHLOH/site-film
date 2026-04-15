package com.sitefilm.etl.infrastructure.provider.tmdb.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.DataContentTranslationResponse;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class ContentTranslationDto {
    @JsonProperty("english_name")
    private String englishName;
    @JsonProperty("iso_3166_1")
    private String iso_3166_1;
    @JsonProperty("iso_639_1")
    private String iso_639_1;
    @JsonProperty("data")
    private DataContentTranslationResponse dataContentTranslationList;
}
