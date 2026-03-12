package com.sitefilm.etl.domain.model;

import com.sitefilm.etl.domain.model.enums.CareerType;

import java.util.Map;

public record CareerImported(
        CareerType type,
        Map<String, String>translations
) {
}
