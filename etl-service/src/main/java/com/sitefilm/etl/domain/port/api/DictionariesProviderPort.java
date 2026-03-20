package com.sitefilm.etl.domain.port.api;

import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.CareerImported;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.CountryImported;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.GenreImported;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.LanguageImported;

import java.util.List;

public interface DictionariesProviderPort {
    List<GenreImported> fetchGenres();
    List<CareerImported> fetchCareers();
    List<CountryImported> fetchCountries();
    List<LanguageImported> fetchLanguages();
}
