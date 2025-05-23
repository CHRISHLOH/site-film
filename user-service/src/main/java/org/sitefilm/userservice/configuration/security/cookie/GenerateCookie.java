package org.sitefilm.userservice.configuration.security.cookie;

import jakarta.servlet.http.Cookie;
import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.configuration.security.config.DefaultTokenCookieFactory;
import org.sitefilm.userservice.configuration.security.jwt.auth.AuthTokenCookieJwtStringSerializer;
import org.sitefilm.userservice.configuration.security.jwt.model.AuthToken;
import org.sitefilm.userservice.configuration.security.jwt.model.VerificationToken;
import org.sitefilm.userservice.configuration.security.jwt.verification.VerificationTokenCookieJwtStringSerializer;
import org.sitefilm.userservice.enums.TokenType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;

import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.UUID;

@Component
@RequiredArgsConstructor
public class GenerateCookie {

    private final DefaultTokenCookieFactory tokenCookieFactory = new DefaultTokenCookieFactory();
    private final AuthTokenCookieJwtStringSerializer tokenCookieJwtStringSerializer;
    private final VerificationTokenCookieJwtStringSerializer verificationTokenCookieJwtStringSerializer;

    public Cookie generateAuthentificationCookie(Authentication authentication) {
        AuthToken authToken = this.tokenCookieFactory.apply(authentication);
        String tokenString = this.tokenCookieJwtStringSerializer.apply(authToken);
        Cookie cookie = new Cookie("__Host-auth-token", tokenString);
        cookie.setPath("/");
        cookie.setDomain(null);
        cookie.setSecure(true);
        cookie.setHttpOnly(true);
        int maxAge = (int) ChronoUnit.SECONDS.between(Instant.now(), authToken.expiresAt());
        cookie.setMaxAge(maxAge);
        return cookie;
    }

    public Cookie generateVerificationCookie(String email) {
        VerificationToken token =  new VerificationToken(UUID.randomUUID(), email,
                TokenType.VERIFICATION.getTokenType(), Instant.now(), Instant.now().plusSeconds(600));
        String stringToken = verificationTokenCookieJwtStringSerializer.apply(token);
        Cookie cookie = new Cookie("__Host-verification-token", stringToken);
        cookie.setPath("/");
        cookie.setDomain(null);
        cookie.setSecure(true);
        cookie.setHttpOnly(true);
        int maxAge = (int) ChronoUnit.SECONDS.between(Instant.now(), token.expiredAt());
        cookie.setMaxAge(maxAge);
        return cookie;
    }

}
