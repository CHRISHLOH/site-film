package com.sitefilm.etl.dto.core.movie;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

@Data
public class MovieTranslationDto {
    @JsonProperty("iso_3166_1")
    private String isoCode;
    @JsonProperty("data")
    private DataMovieTranslation dataMovieTranslationList;
}
