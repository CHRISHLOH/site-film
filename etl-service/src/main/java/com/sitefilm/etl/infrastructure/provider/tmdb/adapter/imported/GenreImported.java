package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

public record GenreImported(
        Integer externalId,
        String name,
        String language
) { }
