package com.sitefilm.etl.infrastructure.provider.tmdb.adapter;

import com.sitefilm.etl.domain.model.content.enums.LoadContentType;
import com.sitefilm.etl.domain.port.api.ContentProviderPort;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
public class TmdbContentAdapterFactory {

    private final Map<LoadContentType, ContentProviderPort> providers;

    public TmdbContentAdapterFactory(TmdbMovieAdapter tmdbMovieAdapter) {
        this.providers = Map.of(tmdbMovieAdapter.loadContentType(),  tmdbMovieAdapter);
    }

    public ContentProviderPort provider(LoadContentType loadContentType) {
        return providers.get(loadContentType);
    }
}
