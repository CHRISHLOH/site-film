package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.domain.model.content.enums.LoadContentType;

public interface ContentLoadStrategy{
    void loadContent(Long externalId, LoadContentType loadContentType);
    LoadContentType supportedContentType();
}
