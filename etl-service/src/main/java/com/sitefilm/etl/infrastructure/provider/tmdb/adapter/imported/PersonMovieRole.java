package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

import com.sitefilm.etl.domain.model.enums.MovieRoleType;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class PersonMovieRole {
    private Long externalId;
    private MovieRoleType type;
    private Short order;
    private String character;
    private String department;
    private String job;
}
