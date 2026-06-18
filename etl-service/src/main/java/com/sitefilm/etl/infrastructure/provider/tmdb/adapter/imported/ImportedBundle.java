package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

public record ImportedBundle<T extends Imported>(
        T importedContent,
        CreditsImported credits
) {}
