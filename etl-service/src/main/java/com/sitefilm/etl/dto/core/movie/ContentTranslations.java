package com.sitefilm.etl.dto.core.movie;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

@Data
public class ContentTranslations {
    @JsonProperty("translations")
    private List<ContentTranslationDto> contentTranslations;
}
