package com.sitefilm.etl.application.usecase;

import com.sitefilm.etl.application.cache.DictionaryRegistry;
import com.sitefilm.etl.application.mapper.tmdb.DictionaryMapper;
import com.sitefilm.etl.domain.model.dictionaries.Career;
import com.sitefilm.etl.domain.model.dictionaries.Country;
import com.sitefilm.etl.domain.model.dictionaries.Genre;
import com.sitefilm.etl.domain.model.dictionaries.Language;
import com.sitefilm.etl.infrastructure.persistense.tmdb.DictionariesRepositoryAdapter;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.TmdbDictionariesAdapter;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Component
public class TmdbDictionariesLoadUseCase {
    private final TmdbDictionariesAdapter tmdbDictionariesAdapter;
    private final DictionariesRepositoryAdapter dictionariesRepositoryAdapter;
    private final DictionaryMapper dictionaryMapper;
    private final DictionaryRegistry cache;

    public TmdbDictionariesLoadUseCase(TmdbDictionariesAdapter tmdbDictionariesAdapter, DictionariesRepositoryAdapter dictionariesRepositoryAdapter, DictionaryMapper dictionaryMapper, DictionaryRegistry cache) {
        this.tmdbDictionariesAdapter = tmdbDictionariesAdapter;
        this.dictionariesRepositoryAdapter = dictionariesRepositoryAdapter;
        this.dictionaryMapper = dictionaryMapper;
        this.cache = cache;
    }

    @Transactional
    public void loadDictionaries() {
        List<Genre> genres = dictionariesRepositoryAdapter.getGenres();
        List<Career> careers = dictionariesRepositoryAdapter.getCareers();
        List<Country> countries = dictionariesRepositoryAdapter.getCountries();
        List<Language> languages = dictionariesRepositoryAdapter.getLanguages();
        if (!genres.isEmpty() && !careers.isEmpty() && !countries.isEmpty() && !languages.isEmpty()) {
            cache.register(genres, countries, careers, languages);
        } else {
            List<Genre> loadedGenres = dictionariesRepositoryAdapter.saveGenres(dictionaryMapper.genreMapping(tmdbDictionariesAdapter.fetchGenres()));
            List<Career> loadedCareers = dictionariesRepositoryAdapter.saveCareers(dictionaryMapper.careerMapping(tmdbDictionariesAdapter.fetchCareers()));
            List<Country> loadedCountries = dictionariesRepositoryAdapter.saveCountries(dictionaryMapper.countryMapping(tmdbDictionariesAdapter.fetchCountries()));
            List<Language> loadedLanguages = dictionariesRepositoryAdapter.saveLanguages(dictionaryMapper.languageMapping(tmdbDictionariesAdapter.fetchLanguages()));
            cache.register(loadedGenres, loadedCountries, loadedCareers, loadedLanguages);
        }
    }
}
