package com.sitefilm.etl.domain.model.translations;

import lombok.Getter;

import java.util.Arrays;

@Getter
public enum TranslationContentType {
    CONTENT((short)1),
    PERSON((short)2);

    private final Short value;

    TranslationContentType(Short value) {
        this.value = value;
    }

    public static TranslationContentType fromId(Short id) {
        return Arrays.stream(TranslationContentType.values())
                .filter(t -> t.value.equals(id))
                .findFirst()
                .orElseThrow();
    }
}
