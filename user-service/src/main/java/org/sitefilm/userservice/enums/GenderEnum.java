package org.sitefilm.userservice.enums;

import lombok.Getter;

@Getter
public enum GenderEnum {
    MALE("Муж."),
    FEMALE("Жен.");

    private final String gender;

    GenderEnum(String gender) {
        this.gender = gender;
    }
}
