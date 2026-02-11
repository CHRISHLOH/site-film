package com.sitefilm.etl.service.core.dto;

import java.util.List;

public record RelationshipsForDataSaveDto(
        List<ContentCountryPersistDto> contentCountries,
        List<ContentGenrePersistDto> contentGenres,
        List<ContentPersonPersistDto> contentPerson
) {
}
