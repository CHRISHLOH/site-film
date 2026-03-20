package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

import com.sitefilm.etl.domain.model.Source;
import com.sitefilm.etl.domain.model.content.enums.ContentType;

public interface Imported {
    ContentType getContentType();
    Source getSource();
}
