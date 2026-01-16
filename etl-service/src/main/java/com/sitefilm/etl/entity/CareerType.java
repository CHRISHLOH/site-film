package com.sitefilm.etl.entity;


import lombok.Getter;

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

    private String value;
    CareerType(int i, String production) {
    }
}
