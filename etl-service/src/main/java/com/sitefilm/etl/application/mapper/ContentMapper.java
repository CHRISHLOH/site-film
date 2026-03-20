package com.sitefilm.etl.application.mapper;

import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.Imported;

public interface ContentMapper<T extends Imported> {
    Content aggregateToDomain(T importedContent);
}
