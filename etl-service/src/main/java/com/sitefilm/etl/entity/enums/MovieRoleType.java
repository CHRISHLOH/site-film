package com.sitefilm.etl.entity.enums;

import lombok.Getter;

import java.util.Arrays;

@Getter
public enum MovieRoleType {
    CAST((short) 1, "Cast"),
    CREW((short) 2, "Crew");

    private final short id;
    private final String value;

    MovieRoleType(short id, String value) {
        this.id = id;
        this.value = value;
    }

    public static MovieRoleType fromTmdb(String role) {
        return Arrays.stream(values())
                .filter(c -> c.value.equals(role))
                .findFirst()
                .orElseThrow(() ->
                        new IllegalArgumentException("Unknown TMDB department: " + role)
                );
    }

}
