package com.sitefilm.etl.dto;

import com.sitefilm.etl.entity.MovieRoleType;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class PersonMovieRole {
    MovieRoleType type;
    Integer order;
    String character;
    String department;
    String job;
}
