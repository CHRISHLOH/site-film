package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.mapper.tmdb.ContentMovieMapper;
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

    public FetchContent(ContentMovieMapper movieMapper, TmdbMovieAdapter tmdbMovieAdapter) {
        this.movieMapper = movieMapper;
        this.tmdbMovieAdapter = tmdbMovieAdapter;
    }
    @Override
    public void execute(ContentLoadContext context) {
        ImportedBundle importedBundle = tmdbMovieAdapter.fetchDetails(context.getExternalId());
        Content content = movieMapper.aggregateToDomain((ImportedMovie) importedBundle.importedContent());
        context.setContent(content);
        context.setImportedBundle(importedBundle);
    }
}
