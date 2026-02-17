package com.sitefilm.etl.service.core.dto;

public record ContentGenrePersistDto(
        Long externalContentId,
        Short genreId,
        Short displayOrder
) {
    @Override
    public String toString() {
        return "ContentGenrePersistDto{" +
                "externalContentId=" + externalContentId +
                ", genreId=" + genreId +
                '}';
    }
}
