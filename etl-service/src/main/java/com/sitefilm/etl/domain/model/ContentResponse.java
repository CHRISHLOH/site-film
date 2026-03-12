package com.sitefilm.etl.domain.model;

import java.util.List;

public interface ContentResponse {
    Long getExternalId();
    String getOriginalTitle();
    String getStatus();
    List<GenreDto> getGenres();
    List<RelationshipsCountryDto> getCountries();
    ContentTranslations getContentTranslations();
}
