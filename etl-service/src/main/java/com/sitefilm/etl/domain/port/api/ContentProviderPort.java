package com.sitefilm.etl.domain.port.api;

import com.sitefilm.etl.domain.model.Imported;
import com.sitefilm.etl.domain.model.enums.ContentType;

import java.util.List;

public interface ContentProviderPort {
    Imported fetchDetails(Long externalId);
    List<Long> fetchPopularIds(int page);
    ContentType supports();
}
