package com.sitefilm.etl.domain.port.api;

import com.sitefilm.etl.domain.model.CareerImported;
import com.sitefilm.etl.domain.model.CountryImported;
import com.sitefilm.etl.domain.model.GenreImported;
import com.sitefilm.etl.domain.model.LanguageImported;

import java.util.List;

public interface DictionariesProviderPort {
    List<GenreImported> fetchGenres();
    List<CareerImported> fetchCareers();
    List<CountryImported> fetchCountries();
    List<LanguageImported> fetchLanguages();
}
