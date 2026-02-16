package com.sitefilm.etl.entity.enums;

import lombok.Getter;

import java.util.stream.Stream;

@Getter
public enum Source {
    TMDB((short) 1, "TMDB");

    private final Short id;
    private final String source;

    Source(Short id, String source) {
        this.id = id;
        this.source = source;
    }

    public static Source getBySourceName(String source) {
        return Stream.of(Source.values())
                .filter(contentsource -> contentsource.getSource().equals(source))
                .findFirst()
                .orElseThrow(() ->
                        new IllegalArgumentException("Unknown TMDB department: " + source)
                );
    }
}
