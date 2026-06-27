package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.mapper.tmdb.ContentMapper;
import com.sitefilm.etl.application.mapper.tmdb.ContentReferencesResolver;
import com.sitefilm.etl.application.strategies.context.ContentLoadContext;
import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.TmdbContentAdapterFactory;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.RawContentData;
import org.springframework.stereotype.Component;

@Component
public class FetchContent implements LoadStep {
    private final ContentMapper movieMapper;
    private final TmdbContentAdapterFactory adapterFactory;
    private final ContentReferencesResolver resolver;

    public FetchContent(ContentMapper movieMapper, TmdbContentAdapterFactory adapterFactory, ContentReferencesResolver resolver) {
        this.movieMapper = movieMapper;
        this.adapterFactory = adapterFactory;
        this.resolver = resolver;
    }

    @Override
    public ContentLoadContext execute(ContentLoadContext context) {
        RawContentData rawData = adapterFactory.provider(context.loadContentType()).fetchDetails(context.externalId());
        Content content = movieMapper.aggregateToDomain(rawData);
        content = resolver.resolveReferences(content, rawData.genreExternalIds(), rawData.countryIsoCodes(),rawData.languageIsoCodes());
        return context.withFetchedContent(rawData.credits(), content);
    }
}
