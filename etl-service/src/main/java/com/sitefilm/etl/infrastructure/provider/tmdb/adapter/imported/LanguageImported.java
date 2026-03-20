package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

public record LanguageImported(
        String iso_639_1,
        String english_name,
        String name
){}
