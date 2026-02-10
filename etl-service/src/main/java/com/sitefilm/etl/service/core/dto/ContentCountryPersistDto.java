package com.sitefilm.etl.service.core.dto;

public record ContentCountryPersistDto(
        Integer externalContentId,
        Long countryId
) {
}
