package com.sitefilm.etl.domain.model;

import com.sitefilm.etl.domain.model.enums.ContentType;
import com.sitefilm.etl.domain.model.enums.Source;

public interface Imported {
    ContentType getContentType();
    Source getSource();
}
