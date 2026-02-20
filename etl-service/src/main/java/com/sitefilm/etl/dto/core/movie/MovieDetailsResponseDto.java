package com.sitefilm.etl.dto.core.movie;

import com.fasterxml.jackson.annotation.JsonProperty;
import com.sitefilm.etl.dto.core.ContentResponse;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.time.LocalDate;

@Data
@EqualsAndHashCode(callSuper = true)
public class MovieDetailsResponseDto extends ContentResponse {
    @JsonProperty("budget")
    private Long budget;
    @JsonProperty("release_date")
    private LocalDate releaseDate;
    @JsonProperty("revenue")
    private Long revenue;
    @JsonProperty("runtime")
    private Short duration;
    @JsonProperty("title")
    private String title;
    @JsonProperty("translations")
    private MovieTranslations movieTranslations;
}
