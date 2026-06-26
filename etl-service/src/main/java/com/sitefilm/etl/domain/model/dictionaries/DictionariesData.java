package com.sitefilm.etl.domain.model.dictionaries;

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
