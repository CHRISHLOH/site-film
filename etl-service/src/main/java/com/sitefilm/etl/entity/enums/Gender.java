package com.sitefilm.etl.entity.enums;

import lombok.Getter;

@Getter
public enum Gender {
    UNKNOWN((short) 0, "unknown"),
    FEMALE((short) 1, "female"),
    MALE((short) 2, "male");;

    private final String gender;
    private final Short genderId;

    Gender(Short genderId, String gender) {
        this.genderId = genderId;
        this.gender = gender;
    }

    public static Gender fromId(byte id) {
        for (Gender g : values()) {
            if (g.genderId == id) {
                return g;
            }
        }
        throw new IllegalArgumentException("Unknown gender id: " + id);
    }
}
