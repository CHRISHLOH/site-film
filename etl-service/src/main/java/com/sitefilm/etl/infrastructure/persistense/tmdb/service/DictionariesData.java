package com.sitefilm.etl.infrastructure.persistense.tmdb.service;

import com.sitefilm.etl.domain.model.dictionaries.Career;
import com.sitefilm.etl.domain.model.dictionaries.Country;
import com.sitefilm.etl.domain.model.dictionaries.Genre;
import com.sitefilm.etl.domain.model.dictionaries.Language;

import java.util.List;

public record DictionariesData(
        List<Genre> genres,
        List<Career> careers,
        List<Country> countries,
        List<Language> languages
) {
    public boolean isComplete() {
        return !genres.isEmpty() && !careers.isEmpty()
                && !countries.isEmpty() && !languages.isEmpty();
    }
}
