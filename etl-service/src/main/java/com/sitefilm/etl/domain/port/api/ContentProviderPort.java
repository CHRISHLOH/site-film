package com.sitefilm.etl.domain.port.api;

import com.sitefilm.etl.domain.model.content.enums.LoadContentType;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedBundle;

public interface ContentProviderPort {
    ImportedBundle fetchDetails(Long externalId);
    LoadContentType loadContentType();
}
