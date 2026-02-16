package com.sitefilm.etl.entity.enums;

import lombok.Getter;

@Getter
public enum ContentType {
    MOVIE((short) 1, "Movie"),
    SERIES((short) 2, "Series");

    private final Short contentTypeId;
    private final String contentTypeName;

    ContentType(Short contentTypeId, String contentTypeName) {
        this.contentTypeId = contentTypeId;
        this.contentTypeName = contentTypeName;
    }

    public static ContentType typeOf(Short contentTypeId) {
        for (ContentType type : values()) {
            if (type.contentTypeId.equals(contentTypeId)) {
                return type;
            }
        }
        throw new RuntimeException();
    }
}
