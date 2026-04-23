package com.sitefilm.etl.domain.port.repository;

import com.sitefilm.etl.domain.model.dictionaries.Career;
import com.sitefilm.etl.domain.model.dictionaries.Country;
import com.sitefilm.etl.domain.model.dictionaries.Genre;
import com.sitefilm.etl.domain.model.dictionaries.Language;

import java.util.List;

public interface DictionariesRepositoryPort {
    void saveGenres(List<Genre> genres);
    void saveLanguages(List<Language> languages);
    void saveCareers(List<Career> careers);
    void saveCountries(List<Country> countries);
}
