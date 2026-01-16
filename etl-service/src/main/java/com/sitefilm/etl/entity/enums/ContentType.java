package com.sitefilm.etl.entity.enums;

import lombok.Getter;

@Getter
public enum ContentType {
    MOVIE((byte) 1, "Movie"),
    SERIES((byte) 2, "Series");

    private Byte contentTypeId;
    private String contentTypeName;

    ContentType(Byte contentTypeId, String contentTypeName) {
        this.contentTypeId = contentTypeId;
        this.contentTypeName = contentTypeName;
    }

    public static ContentType typeOf(Byte contentTypeId) {
        for (ContentType type : values()) {
            if (type.contentTypeId.equals(contentTypeId)) {
                return type;
            }
        }
        throw new RuntimeException();
    }
}
