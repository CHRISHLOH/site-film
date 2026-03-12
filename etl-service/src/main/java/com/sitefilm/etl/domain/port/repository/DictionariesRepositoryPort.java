package com.sitefilm.etl.domain.port.repository;

import com.sitefilm.etl.domain.model.Career;
import com.sitefilm.etl.domain.model.Country;
import com.sitefilm.etl.domain.model.Genre;
import com.sitefilm.etl.domain.model.Language;

import java.util.List;

public interface DictionariesRepositoryPort {
    List<Genre> saveGenres(List<Genre> genres);
    List<Language> saveLanguages(List<Language> languages);
    List<Career> saveCareers(List<Career> careers);
    List<Country> saveCountries(List<Country> countries);
}
