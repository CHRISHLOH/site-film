package com.sitefilm.etl.dto;

import com.sitefilm.etl.entity.enums.MovieRoleType;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class PersonMovieRole {
    MovieRoleType type;
    Short order;
    String character;
    String department;
    String job;
}
