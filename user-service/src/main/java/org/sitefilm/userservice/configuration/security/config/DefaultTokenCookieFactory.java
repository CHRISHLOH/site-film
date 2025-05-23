package org.sitefilm.userservice.configuration.security.config;

import lombok.Setter;
import org.sitefilm.userservice.configuration.security.jwt.model.AuthToken;
import org.sitefilm.userservice.enums.TokenType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;

import java.time.Duration;
import java.time.Instant;
import java.util.UUID;
import java.util.function.BiFunction;
import java.util.function.Function;

@Setter
public class DefaultTokenCookieFactory implements Function<Authentication, AuthToken> {

    private Duration tokenTtl = Duration.ofDays(1);

    @Override
    public AuthToken apply(Authentication authentication) {
        System.out.println("DefaultTokenCookieFactory метод apply начало");
        Instant now = Instant.now();
        return new AuthToken(UUID.randomUUID(), authentication.getName(),
                authentication.getAuthorities().stream()
                        .map(GrantedAuthority::getAuthority).toList(),
                TokenType.ACCESS.getTokenType(),
                now, now.plus(this.tokenTtl));
    }
}
