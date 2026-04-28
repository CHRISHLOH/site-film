package com.sitefilm.etl.domain.model.locale;

import lombok.Getter;

import java.util.Set;

@Getter
public enum Iso639 {
    ISO_639_1_US("en"),
    ISO_639_1_RU("ru"),
    ISO_639_1_FR("fr"),
    ISO_639_1_DE("de"),
    ISO_639_1_ES("es");

    private final String code;
    public static final Set<String> LOCALES_WITHOUT_US = Set.of("ru", "fr", "de", "es");

    Iso639(String code) {
        this.code = code;
    }
}
