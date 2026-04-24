package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.collector.MissingTranslationProcessor;
import com.sitefilm.etl.application.mapper.tmdb.ContentMovieMapper;
import com.sitefilm.etl.application.strategies.context.ContentLoadContext;
import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.infrastructure.persistense.tmdb.MovieRepositoryAdapter;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedMovie;
import org.springframework.stereotype.Component;

@Component
public class PersistContent implements LoadStep {

    private final MovieRepositoryAdapter movieRepositoryAdapter;
    private final MissingTranslationProcessor missingTranslationProcessor;

    public PersistContent(MovieRepositoryAdapter movieRepositoryAdapter, MissingTranslationProcessor missingTranslationProcessor) {
        this.movieRepositoryAdapter = movieRepositoryAdapter;
        this.missingTranslationProcessor = missingTranslationProcessor;
    }

    @Override
    public void execute(ContentLoadContext context) {
        Long contentId = movieRepositoryAdapter.save(context.getContent());
        missingTranslationProcessor.saveMissingContentTranslations(context.getContent().getTranslations(), contentId);
        context.getContent().setId(contentId);
    }
}
