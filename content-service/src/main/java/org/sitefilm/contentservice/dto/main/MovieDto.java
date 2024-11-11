package org.sitefilm.contentservice.dto.main;

import org.sitefilm.contentservice.dto.GenreDto;

import java.time.LocalDate;
import java.util.Set;

public record MovieDto (
        Long id,
        String title,
        String description,
        Set<GenreDto> genres,
        Set<ActorDto> actors,
        LocalDate createdAt,
        LocalDate updatedAt
) {
}
