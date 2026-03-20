package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

public record ImportedBundle(
        Imported importedContent,
        CreditsImported credits
) {}
