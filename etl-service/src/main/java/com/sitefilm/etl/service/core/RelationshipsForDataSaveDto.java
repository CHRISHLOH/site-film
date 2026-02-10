package com.sitefilm.etl.service.core;

import com.sitefilm.etl.service.core.dto.ContentCountryPersistDto;
import com.sitefilm.etl.service.core.dto.ContentGenrePersistDto;
import com.sitefilm.etl.service.core.dto.ContentPersonPersistDto;

import java.util.List;

public record RelationshipsForDataSaveDto(
        List<ContentCountryPersistDto> contentCountries,
        List<ContentGenrePersistDto> contentGenres,
        List<ContentPersonPersistDto> contentPerson
) {
}
