package com.sitefilm.etl.entity.enums;

import lombok.Getter;
import org.springframework.data.crossstore.ChangeSetPersister;

import java.util.stream.Stream;

@Getter
public enum ContentStatus {
    RUMORED(1, "Rumored"),
    PLANNED(2, "Planned"),
    IN_PRODUCTION(3, "In Production"),
    POST_PRODUCTION(4, "Post Production"),
    RELEASED(5, "Released"),
    CANCELED(6, "Canceled"),
    RETURNING_SERIES(7, "Returning Series"),
    ENDED(8, "Ended"),
    PILOT(9, "Pilot");

    private final int id;
    private final String status;

    ContentStatus(int id, String status) {
        this.id = id;
        this.status = status;
    }

    public static ContentStatus getByStatusName(String status) {
        return Stream.of(ContentStatus.values())
                .filter(contentStatus -> contentStatus.getStatus().equals(status))
                .findFirst()
                .orElseThrow(() ->
                        new IllegalArgumentException("Unknown TMDB department: " + status)
                );
    }
}
