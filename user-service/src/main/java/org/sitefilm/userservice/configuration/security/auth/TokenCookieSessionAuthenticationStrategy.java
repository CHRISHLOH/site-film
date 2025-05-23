package org.sitefilm.userservice.configuration.security.auth;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import lombok.Setter;
import org.sitefilm.userservice.configuration.security.config.DefaultTokenCookieFactory;
import org.sitefilm.userservice.configuration.security.cookie.GenerateCookie;
import org.sitefilm.userservice.configuration.security.jwt.model.AuthToken;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.authentication.ott.OneTimeToken;
import org.springframework.security.authentication.ott.OneTimeTokenAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.session.SessionAuthenticationException;
import org.springframework.security.web.authentication.session.SessionAuthenticationStrategy;
import org.springframework.stereotype.Component;

import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.Objects;

import java.util.function.Function;

@Setter
@RequiredArgsConstructor
@Component
public class TokenCookieSessionAuthenticationStrategy implements SessionAuthenticationStrategy {

    private final GenerateCookie generateCookie;

    @Override
    public void onAuthentication(Authentication authentication, HttpServletRequest request,
                                 HttpServletResponse response) throws SessionAuthenticationException {
        String tokenClassName = authentication.getClass().getSimpleName();
        String fqcn = authentication.getClass().getName();

        System.out.println(tokenClassName);
        System.out.println(fqcn);
        if (authentication instanceof UsernamePasswordAuthenticationToken || authentication instanceof OneTimeTokenAuthenticationToken) {
            System.out.println("onAuthentication класса TokenCookieSessionAuthenticationStrategy");
            System.out.println("Класс" + authentication.getClass());
            try {
                System.out.println("отрабатывает try");
                Cookie cookie = generateCookie.generateAuthentificationCookie(authentication);
                response.addCookie(cookie);
            } catch (Exception e) {
                System.out.println("[ТОКЕН-СЕССИЯ] ОШИБКА при создании токена: " + e.getMessage());
                throw new SessionAuthenticationException("Не удалось создать токен: " + e.getMessage());
            }
        } else {
            System.out.println("[ТОКЕН-СЕССИЯ] Пропуск создания токена: не UsernamePasswordAuthenticationToken");
        }
    }
}
