package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.strategies.context.ContentLoadContext;
import com.sitefilm.etl.domain.model.content.enums.LoadContentType;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class MovieLoadStrategy implements ContentLoadStrategy{
    private final List<LoadStep> loadSteps;
    private static final LoadContentType contentType = LoadContentType.TMDB_MOVIE;

    public MovieLoadStrategy(
            FetchContent fetchContent,
            PersistContent persistContent,
            FetchPersons fetchPersons,
            PersistPerson persistPersons,
            PersistRelationships persistRelationships) {
        this.loadSteps = List.of(
                fetchContent, persistContent, fetchPersons, persistPersons, persistRelationships
        );
    }

    @Override
    public void loadContent(Long externalId, LoadContentType loadContentType) {
        ContentLoadContext context = ContentLoadContext.start(externalId, loadContentType);
        for (LoadStep step : loadSteps) {
            context = step.execute(context);
        }
    }

    @Override
    public LoadContentType supportedContentType() {
        return contentType;
    }
}
