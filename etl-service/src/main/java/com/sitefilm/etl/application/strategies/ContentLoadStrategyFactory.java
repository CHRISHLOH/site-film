package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.domain.model.enums.ContentType;

public interface ContentLoadStrategyFactory {
    void supports(ContentType contentType);
//    void
}
