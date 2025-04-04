package org.sitefilm.userservice.configuration.security.jwt.model;

public record Tokens(String accessToken, String accessTokenExpiry,
                     String refreshToken, String refreshTokenExpiry) {
}
