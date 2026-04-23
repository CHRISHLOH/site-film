package com.sitefilm.etl.infrastructure.persistense.tmdb.row;

public record PersonTranslationRow (
        Long personId,
        String locale,
        String localeName,
        String biography
) {
}
