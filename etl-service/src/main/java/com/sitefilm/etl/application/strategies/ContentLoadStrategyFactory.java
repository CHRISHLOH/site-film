package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.domain.model.content.enums.ContentType;

public interface ContentLoadStrategyFactory {
    void supports(ContentType contentType);
}
