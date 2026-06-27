package com.sitefilm.etl.application.usecase;

import com.sitefilm.etl.application.cache.DictionaryRegistry;
import com.sitefilm.etl.application.mapper.tmdb.DictionaryMapper;
import com.sitefilm.etl.domain.port.api.DictionariesProviderPort;
import com.sitefilm.etl.domain.port.repository.DictionariesRepositoryPort;
import com.sitefilm.etl.domain.model.dictionaries.DictionariesData;
import com.sitefilm.etl.infrastructure.persistense.tmdb.service.DictionaryPersistenceService;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.TmdbDictionariesAdapter;
import org.springframework.stereotype.Component;

@Component
public class TmdbDictionariesLoadUseCase {
    private final DictionariesProviderPort adapter;
    private final DictionariesRepositoryPort repository;
    private final DictionaryPersistenceService service;
    private final DictionaryMapper mapper;
    private final DictionaryRegistry cache;

    public TmdbDictionariesLoadUseCase(TmdbDictionariesAdapter adapter, DictionariesRepositoryPort repository, DictionaryPersistenceService service, DictionaryMapper mapper, DictionaryRegistry cache) {
        this.adapter = adapter;
        this.repository = repository;
        this.service = service;
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
        service.saveToDb(fetched);
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

    private DictionariesData fetchFromTmdb() {
        return new DictionariesData(
                mapper.genreMapping(adapter.fetchGenres()),
                mapper.careerMapping(adapter.fetchCareers()),
                mapper.countryMapping(adapter.fetchCountries()),
                mapper.languageMapping(adapter.fetchLanguages())
        );
    }

}
