package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.model.enums.LoadContentType;

public interface ContentLoadStrategy{
    void loadContent(Long externalId, LoadContentType loadContentType);
    LoadContentType supportedContentType();
}
