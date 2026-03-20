package com.sitefilm.etl.domain.port.repository;

import com.sitefilm.etl.domain.model.dictionaries.Career;
import com.sitefilm.etl.domain.model.dictionaries.Country;
import com.sitefilm.etl.domain.model.dictionaries.Genre;
import com.sitefilm.etl.domain.model.dictionaries.Language;

import java.util.List;

public interface DictionariesRepositoryPort {
    List<Genre> saveGenres(List<Genre> genres);
    List<Language> saveLanguages(List<Language> languages);
    List<Career> saveCareers(List<Career> careers);
    List<Country> saveCountries(List<Country> countries);
}
