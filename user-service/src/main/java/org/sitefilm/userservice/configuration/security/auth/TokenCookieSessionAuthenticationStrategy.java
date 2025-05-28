package org.sitefilm.userservice.configuration.security.auth;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.sitefilm.userservice.configuration.security.cookie.GenerateCookie;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.ott.OneTimeTokenAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.session.SessionAuthenticationException;
import org.springframework.security.web.authentication.session.SessionAuthenticationStrategy;
import org.springframework.stereotype.Component;

import java.io.IOException;

@Setter
@RequiredArgsConstructor
@Component
public class TokenCookieSessionAuthenticationStrategy implements SessionAuthenticationStrategy {

    private final GenerateCookie generateCookie;

    @Override
    public void onAuthentication(Authentication authentication, HttpServletRequest request,
                                 HttpServletResponse response) throws SessionAuthenticationException {

        if (authentication instanceof UsernamePasswordAuthenticationToken) {
            System.out.println("Strategy");
            try {
                Cookie authentificationCookiecookie = generateCookie.generateAuthentificationCookie(authentication);
                response.addCookie(authentificationCookiecookie);
            } catch (Exception e) {
                throw new SessionAuthenticationException("Не удалось создать токен: " + e.getMessage());
            }
        } else if (authentication instanceof OneTimeTokenAuthenticationToken && authentication.isAuthenticated()) {
            System.out.println("Strategy");
            Cookie authentificationCookiecookie = generateCookie.generateAuthentificationCookie(authentication);
            Cookie deleteVerificationCookie = generateCookie.nullVerificationCookie();
            response.addCookie(deleteVerificationCookie);
            response.addCookie(authentificationCookiecookie);
            try {
                response.flushBuffer();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
