package com.sitefilm.etl.entity.enums;


import lombok.Getter;

import java.util.Arrays;

@Getter
public enum CareerType {

    PRODUCTION(1, "Production"),
    COSTUME_AND_MAKE_UP(2, "Costume & Make-Up"),
    LIGHTING(3, "Lighting"),
    ACTORS(4, "Actors"),
    CREW(5, "Crew"),
    DIRECTING(6, "Directing"),
    WRITING(7, "Writing"),
    EDITING(8, "Editing"),
    SOUND(9, "Sound"),
    VISUAL_EFFECTS(10, "Visual Effects"),
    CAMERA(11, "Camera"),
    ART(12, "Art");

    private final int id;
    private final String value;

    CareerType(int id, String value) {
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

    public static CareerType fromId(int id) {
        return Arrays.stream(values())
                .filter(t -> t.getId() == id)
                .findFirst()
                .orElseThrow(() -> new IllegalArgumentException("Unknown CareerType id: " + id));
    }
}
