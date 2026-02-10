package com.sitefilm.etl.service.core.dto;

public record ContentPersonPersistDto(
        Integer externalContentId,
        Integer externalPersonId,
        Long careerId,
        String characterName,
        Integer displayOrder

) {
}
