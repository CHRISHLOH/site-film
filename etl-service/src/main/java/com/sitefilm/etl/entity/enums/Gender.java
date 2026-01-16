package com.sitefilm.etl.entity.enums;

import lombok.Getter;

@Getter
public enum Gender {
    FEMALE((byte) 1, "female"),
    MALE((byte) 2, "male");


    private String gender;
    private Byte genderId;
    Gender(byte genderId, String gender) {}

    public static Gender fromId(byte id) {
        for (Gender g : values()) {
            if (g.genderId == id) {
                return g;
            }
        }
        throw new IllegalArgumentException("Unknown gender id: " + id);
    }
}
