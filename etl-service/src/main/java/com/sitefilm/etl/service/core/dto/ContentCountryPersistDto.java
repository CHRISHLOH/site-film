package com.sitefilm.etl.service.core.dto;

public record ContentCountryPersistDto(
        Long externalContentId,
        Short countryId
) {
    @Override
    public String toString() {
        return "ContentCountryPersistDto{" +
                "externalContentId=" + externalContentId +
                ", countryId=" + countryId +
                '}';
    }
}
