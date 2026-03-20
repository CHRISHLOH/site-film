package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

import java.util.Map;

public record CountryImported(
        String iso_3166_1,
        Map<String, String>translations
) {
}
