package org.sitefilm.userservice.dto;

public record ActorDto(
        Long id,
        Byte age,
        String firstName,
        String lastName
) {
}
