package com.sitefilm.etl.domain.port.api;

import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.CreditsImported;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.PersonImportDto;

import java.util.List;
import java.util.Set;

public interface PersonProviderPort {
    List<PersonImportDto> fetchCast(CreditsImported credits, Set<Long> existPersonIds);
}
