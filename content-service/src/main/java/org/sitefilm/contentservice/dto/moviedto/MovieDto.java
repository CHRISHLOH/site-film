package org.sitefilm.contentservice.dto.moviedto;

import org.sitefilm.contentservice.entity.Actor;
import org.sitefilm.contentservice.entity.Genre;

import java.util.Date;
import java.util.Set;

public record MovieDto (
        Long id,
        String title,
        String description,
        Set<Genre> genres,
        Set<Actor> actors,
        Date createdAt,
        Date updatedAt
) {
}
