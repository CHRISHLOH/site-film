package com.sitefilm.etl.entity.enums;

import lombok.Getter;

import java.util.stream.Stream;

@Getter
public enum Source {
    TMDB(1, "TMDB");

    private final int id;
    private final String source;

    Source(int id, String source) {
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
