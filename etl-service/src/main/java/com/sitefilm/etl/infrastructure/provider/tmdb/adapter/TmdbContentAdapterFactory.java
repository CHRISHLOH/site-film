package com.sitefilm.etl.infrastructure.provider.tmdb.adapter;

import com.sitefilm.etl.application.model.enums.LoadContentType;
import com.sitefilm.etl.domain.port.api.ContentProviderPort;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Component
public class TmdbContentAdapterFactory {

    private final Map<LoadContentType, ContentProviderPort> providers;

    public TmdbContentAdapterFactory(List<ContentProviderPort> adapters) {
        this.providers = adapters.stream().collect(Collectors.toMap(ContentProviderPort::loadContentType, s -> s));
    }

    public ContentProviderPort provider(LoadContentType loadContentType) {
        return providers.get(loadContentType);
    }
}
