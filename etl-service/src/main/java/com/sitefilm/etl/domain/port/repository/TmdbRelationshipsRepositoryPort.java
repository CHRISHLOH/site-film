package com.sitefilm.etl.domain.port.repository;

import com.sitefilm.etl.domain.model.ref.RelationshipsAggregatedData;

public interface TmdbRelationshipsRepositoryPort {
    void save(RelationshipsAggregatedData data);
}
