package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.strategies.context.ContentLoadContext;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class MovieLoadStrategy implements ContentLoadStrategy{
    List<LoadStep> loadSteps;

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
    public void loadContent(Long externalId) {
        ContentLoadContext context = new ContentLoadContext(externalId);
        loadSteps.forEach(step -> {
            step.execute(context);
        });
    }
}
