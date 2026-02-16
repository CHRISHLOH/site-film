package com.sitefilm.etl.service.core.dto;

public record ContentGenrePersistDto(
        Long externalContentId,
        Short genreId,
        Short displayOrder
) {
}
