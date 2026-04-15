package com.sitefilm.etl.infrastructure.provider.tmdb.response.movie;

public record DataContentTranslationResponse (
        String locale,
        String title,
        String description,
        String plotSummary
) {
}
