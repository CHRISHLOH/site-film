package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

public record Cast(
        Long externalId,
        String character,
        Short order
) {
}
