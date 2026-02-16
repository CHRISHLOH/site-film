package com.sitefilm.etl.service.core.dto;

public record ContentCountryPersistDto(
        Long externalContentId,
        Short countryId
) {
}
