package com.sitefilm.etl.domain.model;

public record GenreImported(
        Integer externalId,
        String name,
        String language
) { }
