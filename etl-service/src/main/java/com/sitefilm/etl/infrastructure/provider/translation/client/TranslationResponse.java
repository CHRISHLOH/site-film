package com.sitefilm.etl.infrastructure.provider.translation.client;

import com.fasterxml.jackson.annotation.JsonProperty;

public record TranslationResponse(
        @JsonProperty("translatedText")
        String translation
) {
}
