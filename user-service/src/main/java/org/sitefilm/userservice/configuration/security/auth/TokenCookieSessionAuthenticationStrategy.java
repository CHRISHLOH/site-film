package org.sitefilm.userservice.configuration.security.auth;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.Setter;
import org.sitefilm.userservice.configuration.security.config.DefaultTokenCookieFactory;
import org.sitefilm.userservice.configuration.security.jwt.model.Token;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.session.SessionAuthenticationException;
import org.springframework.security.web.authentication.session.SessionAuthenticationStrategy;

import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.Objects;
import java.util.function.Function;

@Setter
public class TokenCookieSessionAuthenticationStrategy implements SessionAuthenticationStrategy {

    private Function<Authentication, Token> tokenCookieFactory = new DefaultTokenCookieFactory();

    private Function<Token, String> tokenStringSerializer = Objects::toString;

    @Override
    public void onAuthentication(Authentication authentication, HttpServletRequest request,
                                 HttpServletResponse response) throws SessionAuthenticationException {

        if (authentication instanceof UsernamePasswordAuthenticationToken) {
            Token token = this.tokenCookieFactory.apply(authentication);
            String tokenString = this.tokenStringSerializer.apply(token);

            Cookie cookie = new Cookie("__Host-auth-token", tokenString);
            cookie.setPath("/");
            cookie.setDomain(null);
            cookie.setSecure(true);
            cookie.setHttpOnly(true);
            cookie.setMaxAge((int) ChronoUnit.SECONDS.between(Instant.now(), token.expiresAt()));
            response.addCookie(cookie);
        }
    }
}
