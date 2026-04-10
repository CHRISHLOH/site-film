package com.sitefilm.etl.domain.model.translations;

import lombok.Getter;

import java.util.Arrays;

@Getter
public enum TranslationStatus {
    RAW((short) 1),
    LIBRE_TRANSLATE_PROCESS((short) 2),
    LIBRE_TRANSLATE_SUCCESS((short) 3),
    LLM_TRANSLATE_PROCESS((short) 4),
    LLM_TRANSLATE_SUCCESS((short) 5),
    NULL((short)6);

    private final Short value;

    TranslationStatus(Short value) {
        this.value = value;
    }

    public static TranslationStatus fromId(Short id) {
        return Arrays.stream(TranslationStatus.values())
                .filter(t -> t.value.equals(id))
                .findFirst()
                .orElseThrow();
    }
}
