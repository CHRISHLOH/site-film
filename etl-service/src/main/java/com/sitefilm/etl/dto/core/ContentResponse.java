package com.sitefilm.etl.dto.core;

import com.sitefilm.etl.dto.core.movie.ContentTranslations;
import com.sitefilm.etl.dto.dictionaries.GenreDto;

import java.util.List;

public interface ContentResponse {
    Long getExternalId();
    String getOriginalTitle();
    String getStatus();
    List<GenreDto> getGenres();
    List<RelationshipsCountryDto> getCountries();
    ContentTranslations getContentTranslations();
}
