package com.sitefilm.etl.domain.port.api;

import com.sitefilm.etl.application.model.enums.LoadContentType;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.RawContentData;

import java.util.List;

public interface ContentProviderPort {
    RawContentData fetchDetails(Long externalId);
    LoadContentType loadContentType();
    List<Long> fetchPopularIds(int page);
    Short countPage();
}
