package org.sitefilm.userservice.dto;

import java.util.Date;
import java.util.Set;

public record MovieDto (
        Long id,
        String title,
        String description,
        Set<GenreDto> genres,
        Set<ActorDto> actors,
        Date createdAt,
        Date updatedAt
) {
}

