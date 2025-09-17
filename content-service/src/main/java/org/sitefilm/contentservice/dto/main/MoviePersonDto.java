package org.sitefilm.contentservice.dto.main;

import org.sitefilm.contentservice.entity.main.movie.Movie;
import org.sitefilm.contentservice.entity.main.person.Person;
import org.sitefilm.contentservice.enums.PriorityLevel;

public record MoviePersonDto(
        Long id,
        Movie movie,
        Person person,
        PriorityLevel actorPriorityLevel,
        PriorityLevel moviePriorityLevel
) {
}
