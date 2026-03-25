package com.sitefilm.etl.domain.model.content.enums;

import lombok.Getter;

import java.util.stream.Stream;

@Getter
public enum ContentStatus {
    RUMORED((short) 1, "Rumored"),
    PLANNED((short) 2, "Planned"),
    IN_PRODUCTION((short) 3, "In Production"),
    POST_PRODUCTION((short) 4, "Post Production"),
    RELEASED((short) 5, "Released"),
    CANCELED((short) 6, "Canceled"),
    RETURNING_SERIES((short) 7, "Returning Series"),
    ENDED((short) 8, "Ended"),
    PILOT((short) 9, "Pilot"),
    UNKNOWN((short)10, "Unknown");

    private final Short id;
    private final String status;

    ContentStatus(Short id, String status) {
        this.id = id;
        this.status = status;
    }

    public static ContentStatus getByStatusName(String status) {
        return Stream.of(ContentStatus.values())
                .filter(contentStatus -> contentStatus.getStatus().equals(status))
                .findFirst()
                .orElse(ContentStatus.UNKNOWN);
    }
}
