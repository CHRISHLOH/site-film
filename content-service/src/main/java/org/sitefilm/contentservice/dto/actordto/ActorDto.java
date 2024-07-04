package org.sitefilm.contentservice.dto.actordto;

public record ActorDto(
        Long id,
        Byte age,
        String firstName,
        String lastName
) {
}
