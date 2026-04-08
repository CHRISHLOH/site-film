package com.sitefilm.etl.infrastructure.provider.translation.client;

public record TranslationRequest(
        String q,
        String source,
        String target
) {
}
