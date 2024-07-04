package org.sitefilm.adminservice.dto.actordto;

public record UpdatedActorDto(
        Long id,
        Byte age,
        String firstName,
        String lastName
) {
}
