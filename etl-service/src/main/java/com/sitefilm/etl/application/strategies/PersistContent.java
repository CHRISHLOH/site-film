package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.collector.MissingTranslationProcessor;
import com.sitefilm.etl.application.strategies.context.ContentLoadContext;
import com.sitefilm.etl.infrastructure.persistense.tmdb.service.ContentPersistenceService;
import org.springframework.stereotype.Component;

@Component
public class PersistContent implements LoadStep {

    private final ContentPersistenceService contentPersistenceService;
    private final MissingTranslationProcessor missingTranslationProcessor;

    public PersistContent(ContentPersistenceService contentPersistenceService, MissingTranslationProcessor missingTranslationProcessor) {
        this.contentPersistenceService = contentPersistenceService;
        this.missingTranslationProcessor = missingTranslationProcessor;
    }

    @Override
    public ContentLoadContext execute(ContentLoadContext context) {
        Long contentId = contentPersistenceService.save(context.content());
        missingTranslationProcessor.saveMissingContentTranslations(context.content().getTranslations(), contentId);
        return context.withSavedContentId(contentId);
    }
}
