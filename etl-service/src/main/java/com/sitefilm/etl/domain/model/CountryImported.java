package com.sitefilm.etl.domain.model;

import java.util.Map;

public record CountryImported(
        String iso_3166_1,
        Map<String, String>translations
) {
}
