package com.sitefilm.etl.domain.model.failed;

import lombok.Getter;

import java.util.Arrays;

@Getter
public enum EntityType {
    CONTENT((short)1),
    CONTENT_TRANSLATION((short)2),
    PERSON((short)3),
    PERSON_TRANSLATION((short)4),
    TRANSLATION_PROCESS((short)5),
    CONTENT_DETAILS((short)6);

    private final Short value;

    EntityType(Short value) {
        this.value = value;
    }

    public static EntityType fromId(Short value) {
        return Arrays.stream(EntityType.values()).filter(entityType ->
                entityType.value.equals(value))
                .findFirst()
                .orElseThrow();
    }
}
