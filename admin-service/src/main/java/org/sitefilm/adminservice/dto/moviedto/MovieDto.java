package org.sitefilm.adminservice.dto.moviedto;

import lombok.NoArgsConstructor;
import org.sitefilm.adminservice.dto.actordto.ActorDto;
import org.sitefilm.adminservice.dto.genredto.GenreDto;

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
