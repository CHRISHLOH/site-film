package com.sitefilm.etl.application.mapper;

import com.sitefilm.etl.domain.model.Content;
import com.sitefilm.etl.domain.model.Imported;

public interface ContentMapper<T extends Imported> {
    Content aggregateToDomain(T importedContent);
}
