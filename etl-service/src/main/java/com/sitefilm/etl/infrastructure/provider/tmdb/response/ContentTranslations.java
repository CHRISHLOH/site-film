package com.sitefilm.etl.infrastructure.provider.tmdb.response;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

@Data
public class ContentTranslations {
    @JsonProperty("translations")
    private List<ContentTranslationDto> contentTranslations;
}
