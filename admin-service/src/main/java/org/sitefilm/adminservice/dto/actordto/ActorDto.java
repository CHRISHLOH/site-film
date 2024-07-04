package org.sitefilm.adminservice.dto.actordto;

public record ActorDto(
        Long id,
        Byte age,
        String firstName,
        String lastName
) {
}
