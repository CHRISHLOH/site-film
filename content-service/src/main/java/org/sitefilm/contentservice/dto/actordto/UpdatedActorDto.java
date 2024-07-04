package org.sitefilm.contentservice.dto.actordto;

public record UpdatedActorDto(
        Long id,
        Byte age,
        String firstName,
        String lastName
) {
}
