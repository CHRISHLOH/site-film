package org.sitefilm.userservice.configuration.security.jwt.model;

import java.time.Instant;
import java.util.UUID;

public record VerificationToken(UUID id, String email, String tokenType, Instant createdAt, Instant expiredAt) {
}
