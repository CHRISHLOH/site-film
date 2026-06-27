package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.mapper.tmdb.ContentMovieMapper;
import com.sitefilm.etl.application.mapper.tmdb.ContentReferencesResolver;
import com.sitefilm.etl.application.strategies.context.ContentLoadContext;
import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.TmdbContentAdapterFactory;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedBundle;
import org.springframework.stereotype.Component;

@Component
public class FetchContent implements LoadStep {
    private final ContentMovieMapper movieMapper;
    private final TmdbContentAdapterFactory adapterFactory;
    private final ContentReferencesResolver resolver;

    public FetchContent(ContentMovieMapper movieMapper, TmdbContentAdapterFactory adapterFactory, ContentReferencesResolver resolver) {
        this.movieMapper = movieMapper;
        this.adapterFactory = adapterFactory;
        this.resolver = resolver;
    }

    @Override
    public ContentLoadContext execute(ContentLoadContext context) {
        ImportedBundle importedBundle = adapterFactory.provider(context.loadContentType()).fetchDetails(context.externalId());
        Content content = movieMapper.aggregateToDomain(importedBundle.importedContent(), context.loadContentType());
        content = resolver.resolveReferences(content, importedBundle.importedContent());
        return context.withFetchedContent(importedBundle, content);
    }
}
