package com.sitefilm.etl.infrastructure.persistense.tmdb;

import com.sitefilm.etl.domain.model.content.Details;

public interface DetailsRepositoryPort <T extends Details> {
    void saveDetails(T details, Long contentId);
}
