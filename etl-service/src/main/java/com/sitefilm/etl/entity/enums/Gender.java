package com.sitefilm.etl.entity.enums;

import lombok.Getter;

@Getter
public enum Gender {
    MALE("male"),
    FEMALE("female");

    private String value;
    Gender(String value) {}
}
