package com.sitefilm.etl.application.mapper.tmdb;

import com.sitefilm.etl.domain.model.content.Details;
import com.sitefilm.etl.domain.model.content.enums.LoadContentType;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.Imported;

public interface DetailsMapper <T extends Imported,  K extends Details> {
    LoadContentType getLoadContentType();
    K details(T details);
}
