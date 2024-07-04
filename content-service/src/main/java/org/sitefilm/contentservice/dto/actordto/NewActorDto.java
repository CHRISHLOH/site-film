package org.sitefilm.contentservice.dto.actordto;

public record NewActorDto(
        Byte age,
        String firstName,
        String lastName
) {
}
