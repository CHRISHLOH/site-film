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

    public static final Set<String> localesWithoutUS = Set.of(ISO_RU.code, ISO_ES.code, ISO_FR.code,  ISO_ES.code);

    private final String code;

    DBIso(String code) {
        this.code = code;
    }
}
