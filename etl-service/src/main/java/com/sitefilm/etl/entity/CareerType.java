package com.sitefilm.etl.entity;


import lombok.Getter;

@Getter
public enum CareerType {
    PRODUCTION("Production"),
    COSTUME_AND_MAKE_UP("Costume & Make-Up"),
    LIGHTING("Lighting"),
    ACTORS("Actors"),
    CREW("Crew"),
    DIRECTING("Directing"),
    WRITING("Writing"),
    EDITING("Editing"),
    SOUND("Sound"),
    VISUAL_EFFECTS("Visual Effects"),
    CAMERA("Camera"),
    ART("Art");

    private String value;
    CareerType(String value) {}
}
