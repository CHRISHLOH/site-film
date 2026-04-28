package com.sitefilm.etl.domain.model.failed;

import lombok.Getter;

import java.util.Arrays;

@Getter
public enum Stage {
    DB_SAVE((short) 1),
    REQUEST((short) 2);

    private final Short value;

    Stage(Short value) {
        this.value = value;
    }

    public static Stage fromId(Short id) {
        return Arrays.stream(Stage.values()).filter(stage ->
                stage.getValue().equals(id))
                .findFirst()
                .orElseThrow();
    }
}
