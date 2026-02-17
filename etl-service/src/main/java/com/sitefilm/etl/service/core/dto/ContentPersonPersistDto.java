package com.sitefilm.etl.service.core.dto;

public record ContentPersonPersistDto(
        Long externalContentId,
        Long externalPersonId,
        Short careerId,
        String characterName,
        Short displayOrder
) {
    @Override
    public String toString() {
        return "ContentPersonPersistDto{" +
                "externalPersonId=" + externalPersonId +
                ", externalContentId=" + externalContentId +
                '}';
    }
}
