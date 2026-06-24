package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

import com.sitefilm.etl.domain.model.content.DataContentTranslation;
import com.sitefilm.etl.domain.model.content.enums.AgeRating;
import com.sitefilm.etl.domain.model.content.enums.ContentStatus;

import java.util.List;

public interface ImportedContent extends Imported {
    String getOriginalTitle();
    ContentStatus getStatus();
    AgeRating getAgeRating();
    Long getExternalId();
    List<DataContentTranslation> getTranslation();
    List<Integer> getGenres();
    List<String> getCountries();
    List<String> getSpokenLanguages();
}
