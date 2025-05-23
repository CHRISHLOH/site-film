package org.sitefilm.userservice.configuration.security.jwt.model;

import java.time.Instant;
import java.util.List;
import java.util.UUID;

public record AuthToken(UUID id, String subject, List<String> authorities,String tokenType, Instant createdAt, Instant expiresAt) {
}
