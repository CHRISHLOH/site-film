package com.sitefilm.etl.dto.core.movie;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class MovieTranslationDto {
    @JsonProperty("english_name")
    private String englishName;
    @JsonProperty("iso_3166_1")
    private String isoCode;
    @JsonProperty("data")
    private DataMovieTranslation dataMovieTranslationList;
}
