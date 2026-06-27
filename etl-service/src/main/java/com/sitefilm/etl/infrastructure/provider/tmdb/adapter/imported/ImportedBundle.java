package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

public record ImportedBundle(
        ImportedContent importedContent,
        CreditsImported credits
) {}
