package com.sitefilm.etl.domain.model.locale;

import lombok.Getter;

import java.util.Set;

@Getter
public enum Iso3166 {
    ISO_3166_1_US("US"),
    ISO_3166_1_RU("RU"),
    ISO_3166_1_FR("FR"),
    ISO_3166_1_DE("DE"),
    ISO_3166_1_ES("ES");

    public static final Set<String> LOCALES_WITHOUT_US = Set.of("RU","DE","ES","FR");
    private final String code;

    Iso3166(String code) {
        this.code = code;
    }
}
