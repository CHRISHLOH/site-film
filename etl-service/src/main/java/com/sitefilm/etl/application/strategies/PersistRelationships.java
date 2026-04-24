package com.sitefilm.etl.application.strategies;

import com.sitefilm.etl.application.aggreagor.RelationshipsAggregator;
import com.sitefilm.etl.application.strategies.context.ContentLoadContext;
import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.domain.model.ref.RelationshipsAggregatedData;
import com.sitefilm.etl.infrastructure.persistense.tmdb.RelationshipsRepositoryAdapter;
import org.springframework.stereotype.Component;

@Component
public class PersistRelationships implements LoadStep{
    private final RelationshipsAggregator relationshipsAggregator;
    private final RelationshipsRepositoryAdapter repository;


    public PersistRelationships(RelationshipsAggregator relationshipsAggregator, RelationshipsRepositoryAdapter repository) {
        this.relationshipsAggregator = relationshipsAggregator;
        this.repository = repository;
    }

    @Override
    public void execute(ContentLoadContext context) {
        Content content = context.getContent();
        RelationshipsAggregatedData relationshipsAggregatedData = relationshipsAggregator.aggregatedData(
                content.getGenres(),
                content.getCountries(),
                content.getSpokenLanguages(),
                context.getSavedPersons(),
                content.getId(),
                context.getPersonRoles());
        repository.save(relationshipsAggregatedData);
    }
}
