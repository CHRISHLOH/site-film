package com.sitefilm.etl.domain.port.api;

import com.sitefilm.etl.domain.model.content.enums.LoadContentType;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedBundle;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedContent;

public interface ContentProviderPort {
    ImportedBundle<? extends ImportedContent> fetchDetails(Long externalId);
    LoadContentType loadContentType();
}
