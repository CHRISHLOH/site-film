package com.sitefilm.etl.domain.port.repository;

import com.sitefilm.etl.domain.model.content.Content;

public interface ContentRepositoryPort {
    Long save(Content content);

}
