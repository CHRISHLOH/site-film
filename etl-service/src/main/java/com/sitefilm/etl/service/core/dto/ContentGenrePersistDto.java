package com.sitefilm.etl.service.core.dto;

public record ContentGenrePersistDto(
        Integer externalContentId,
        Long genreId,
        Short displayOrder
) {
}
