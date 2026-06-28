package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

import com.sitefilm.etl.domain.model.enums.MovieRoleType;

public record PersonRole(
        Long externalId,
        MovieRoleType type,
        Short order,
        String character,
        Short careerId
) {}
