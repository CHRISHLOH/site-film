package com.sitefilm.etl.domain.port.api;

import com.sitefilm.etl.domain.model.PersonImportDto;

import java.util.List;
import java.util.Set;

public interface PersonProviderPort {
    List<PersonImportDto> fetchCast(Long movieId, Set<Long> existPersonIds);
    List<Long> existPersons(Long movieId);
}
