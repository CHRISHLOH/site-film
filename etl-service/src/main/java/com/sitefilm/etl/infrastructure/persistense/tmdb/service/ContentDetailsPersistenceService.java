package com.sitefilm.etl.infrastructure.persistense.tmdb.service;

import com.sitefilm.etl.domain.model.content.Details;
import com.sitefilm.etl.domain.model.content.enums.ContentType;

public interface ContentDetailsPersistenceService {
    ContentType supports();
    void saveDetails(Details details, Long contentId, Long externalId);
}
