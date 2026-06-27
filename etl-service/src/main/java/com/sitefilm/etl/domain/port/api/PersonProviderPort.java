package com.sitefilm.etl.domain.port.api;

import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.CreditsImported;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.RawPersonData;

import java.util.List;
import java.util.Set;

public interface PersonProviderPort {
    List<RawPersonData> fetchCast(CreditsImported credits, Set<Long> existPersonIds);
}
