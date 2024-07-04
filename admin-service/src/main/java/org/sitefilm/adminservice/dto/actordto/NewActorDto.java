package org.sitefilm.adminservice.dto.actordto;

public record NewActorDto(
        Byte age,
        String firstName,
        String lastName
) {
}
