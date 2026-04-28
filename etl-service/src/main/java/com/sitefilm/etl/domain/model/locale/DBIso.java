package com.sitefilm.etl.domain.model.locale;

import lombok.Getter;

import java.util.Set;

@Getter
public enum DBIso {
    ISO_RU("ru-RU"),
    ISO_EN("en-US"),
    ISO_DE("de-DE"),
    ISO_ES("es-ES"),
    ISO_FR("fr-FR");

    public static final Set<String> LOCALES_WITHOUT_US = Set.of("ru-RU", "de-DE", "es-ES", "fr-FR");
    private final String code;

    DBIso(String code) {
        this.code = code;
    }
}
