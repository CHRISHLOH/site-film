package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.aggreagor.RelationshipsAggregator;
import com.sitefilm.etl.application.strategies.context.ContentLoadContext;
import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.domain.model.ref.RelationshipsAggregatedData;
import com.sitefilm.etl.infrastructure.persistense.tmdb.service.RelationshipsRepositoryService;
import org.springframework.stereotype.Component;

@Component
public class PersistRelationships implements LoadStep {
    private final RelationshipsAggregator relationshipsAggregator;
    private final RelationshipsRepositoryService service;


    public PersistRelationships(RelationshipsAggregator relationshipsAggregator, RelationshipsRepositoryService service) {
        this.relationshipsAggregator = relationshipsAggregator;
        this.service = service;
    }

    @Override
    public ContentLoadContext execute(ContentLoadContext context) {
        Content content = context.content();
        RelationshipsAggregatedData relationshipsAggregatedData = relationshipsAggregator.aggregatedData(
                content.getGenres(),
                content.getCountries(),
                content.getSpokenLanguages(),
                context.savedPersons(),
                context.savedContentId(),
                context.personRoles());
        service.save(relationshipsAggregatedData);
        return context;
    }
}
