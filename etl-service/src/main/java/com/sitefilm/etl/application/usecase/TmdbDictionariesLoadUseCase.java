package com.sitefilm.etl.application.usecase;

import com.sitefilm.etl.application.cache.DictionaryRegistry;
import com.sitefilm.etl.application.mapper.tmdb.DictionaryMapper;
import com.sitefilm.etl.infrastructure.persistense.tmdb.DictionariesRepositoryAdapter;
import com.sitefilm.etl.infrastructure.persistense.tmdb.service.DictionariesData;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.TmdbDictionariesAdapter;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
public class TmdbDictionariesLoadUseCase {
    private final TmdbDictionariesAdapter adapter;
    private final DictionariesRepositoryAdapter repository;
    private final DictionaryMapper mapper;
    private final DictionaryRegistry cache;

    public TmdbDictionariesLoadUseCase(TmdbDictionariesAdapter adapter, DictionariesRepositoryAdapter repository, DictionaryMapper mapper, DictionaryRegistry cache) {
        this.adapter = adapter;
        this.repository = repository;
        this.mapper = mapper;
        this.cache = cache;
    }

    public void loadDictionaries() {
        DictionariesData existing = loadFromDb();
        if (existing.isComplete()) {
            cache.register(existing);
            return;
        }
        DictionariesData fetched = fetchFromTmdb();
        saveToDb(fetched);
        cache.register(loadFromDb());
    }

    private DictionariesData loadFromDb() {
        return new DictionariesData(
                repository.getGenres(),
                repository.getCareers(),
                repository.getCountries(),
                repository.getLanguages()
        );
    }

    @Transactional
    protected void saveToDb(DictionariesData data) {
        repository.saveGenres(data.genres());
        repository.saveCareers(data.careers());
        repository.saveCountries(data.countries());
        repository.saveLanguages(data.languages());
    }

    private DictionariesData fetchFromTmdb() {
        return new DictionariesData(
                mapper.genreMapping(adapter.fetchGenres()),
                mapper.careerMapping(adapter.fetchCareers()),
                mapper.countryMapping(adapter.fetchCountries()),
                mapper.languageMapping(adapter.fetchLanguages())
        );
    }

}
