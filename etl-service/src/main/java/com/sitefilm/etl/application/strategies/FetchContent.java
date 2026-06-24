package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.mapper.tmdb.ContentMovieMapper;
import com.sitefilm.etl.application.mapper.tmdb.ContentReferencesResolver;
import com.sitefilm.etl.application.strategies.context.ContentLoadContext;
import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.TmdbMovieAdapter;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedBundle;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedMovie;
import org.springframework.stereotype.Component;

@Component
public class FetchContent implements LoadStep {
    private final ContentMovieMapper movieMapper;
    private final TmdbMovieAdapter tmdbMovieAdapter;
    private final ContentReferencesResolver resolver;

    public FetchContent(ContentMovieMapper movieMapper, TmdbMovieAdapter tmdbMovieAdapter, ContentReferencesResolver resolver) {
        this.movieMapper = movieMapper;
        this.tmdbMovieAdapter = tmdbMovieAdapter;
        this.resolver = resolver;
    }
    @Override
    public ContentLoadContext execute(ContentLoadContext context) {
        ImportedBundle<ImportedMovie> importedBundle = tmdbMovieAdapter.fetchDetails(context.externalId());
        Content content = movieMapper.aggregateToDomain(importedBundle.importedContent());
        content = resolver.resolveReferences(content, importedBundle.importedContent());
        return  context.withFetchedContent(importedBundle, content);
    }
}
