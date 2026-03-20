package com.sitefilm.etl.domain.port.api;

import com.sitefilm.etl.domain.model.content.enums.ContentType;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedBundle;

import java.util.List;

public interface ContentProviderPort {
    ImportedBundle fetchDetails(Long externalId);
    List<Long> fetchPopularIds(int page);
    ContentType supports();
}
