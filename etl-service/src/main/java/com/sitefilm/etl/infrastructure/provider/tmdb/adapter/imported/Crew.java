package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

public record Crew(
        Long externalId,
        String department,
        String job
) {
}
