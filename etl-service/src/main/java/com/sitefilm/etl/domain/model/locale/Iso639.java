package com.sitefilm.etl.domain.model.locale;

import java.util.Set;

public enum Iso639 {
    ISO_639_1_US("en"),
    ISO_639_1_RU("ru"),
    ISO_639_1_FR("fr"),
    ISO_639_1_DE("de"),
    ISO_639_1_ES("es");

    private final String code;
    public static final Set<String> localesWithoutUS = Set.of(ISO_639_1_RU.code, ISO_639_1_FR.code, ISO_639_1_DE.code, ISO_639_1_ES.code);

    Iso639(String code) {
        this.code = code;
    }
}
