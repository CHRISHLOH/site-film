package com.sitefilm.etl.domain.port.api;

import com.sitefilm.etl.domain.model.content.enums.LoadContentType;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.RawContentData;

public interface ContentProviderPort {
    RawContentData fetchDetails(Long externalId);
    LoadContentType loadContentType();
}
