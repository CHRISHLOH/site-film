package org.sitefilm.userservice.configuration.security;

public record Tokens(String accessToken, String accessTokenExpiry,
                     String refreshToken, String refreshTokenExpiry) {
}
