package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

import com.sitefilm.etl.domain.model.person.CareerType;

import java.util.Map;

public record CareerImported(
        CareerType type,
        Map<String, String>translations
) {
}
