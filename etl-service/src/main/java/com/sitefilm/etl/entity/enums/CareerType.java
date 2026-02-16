package com.sitefilm.etl.entity.enums;


import lombok.Getter;

import java.util.Arrays;
import java.util.Objects;

@Getter
public enum CareerType {

    PRODUCTION((short) 1, "Production"),
    COSTUME_AND_MAKE_UP((short) 2, "Costume & Make-Up"),
    LIGHTING((short) 3, "Lighting"),
    ACTORS((short) 4, "Actors"),
    CREW((short) 5, "Crew"),
    DIRECTING((short) 6, "Directing"),
    WRITING((short) 7, "Writing"),
    EDITING((short) 8, "Editing"),
    SOUND((short) 9, "Sound"),
    VISUAL_EFFECTS((short) 10, "Visual Effects"),
    CAMERA((short) 11, "Camera"),
    ART((short) 12, "Art");

    private final Short id;
    private final String value;

    CareerType(Short id, String value) {
        this.id = id;
        this.value = value;
    }

    public static CareerType fromTmdb(String department) {
        return Arrays.stream(values())
                .filter(c -> c.value.equals(department))
                .findFirst()
                .orElseThrow(() ->
                        new IllegalArgumentException("Unknown TMDB department: " + department)
                );
    }

    public static CareerType fromId(Short id) {
        return Arrays.stream(values())
                .filter(t -> Objects.equals(t.getId(), id))
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Unknown CareerType id: " + id));
    }
}
