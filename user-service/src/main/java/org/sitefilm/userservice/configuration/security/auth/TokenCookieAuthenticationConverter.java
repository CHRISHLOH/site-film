package org.sitefilm.userservice.configuration.security.auth;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import org.sitefilm.userservice.configuration.security.jwt.model.Token;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationConverter;
import org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken;

import java.util.function.Function;
import java.util.stream.Stream;

public class TokenCookieAuthenticationConverter implements AuthenticationConverter {

    private final Function<String, Token> tokenCookieStringDeserializer;

    public TokenCookieAuthenticationConverter(Function<String, Token> tokenCookieStringDeserializer) {
        this.tokenCookieStringDeserializer = tokenCookieStringDeserializer;
    }

    @Override
    public Authentication convert(HttpServletRequest request) {
        System.out.println("=== НАЧАЛО КОНВЕРТЕРА АУТЕНТИФИКАЦИИ ===");
        System.out.println("URL запроса: " + request.getRequestURL());

        if (request.getCookies() != null) {
            System.out.println("Найдены куки в запросе:");
            for (Cookie cookie : request.getCookies()) {
                System.out.println("  - " + cookie.getName() + ": " + (cookie.getName().equals("__Host-auth-token") ? "[ЗНАЧЕНИЕ СКРЫТО]" : cookie.getValue()));
            }

            var authCookie = Stream.of(request.getCookies())
                    .filter(cookie -> cookie.getName().equals("__Host-auth-token"))
                    .findFirst();

            if (authCookie.isPresent()) {
                System.out.println("Найдена кука auth-token, пытаемся десериализовать");
                try {
                    var token = this.tokenCookieStringDeserializer.apply(authCookie.get().getValue());
                    System.out.println("Токен успешно десериализован: " + token.id());
                    System.out.println("=== КОНЕЦ КОНВЕРТЕРА АУТЕНТИФИКАЦИИ ===");
                    return new PreAuthenticatedAuthenticationToken(token, authCookie.get().getValue());
                } catch (Exception e) {
                    System.out.println("Ошибка при десериализации токена: " + e.getMessage());
                }
            } else {
                System.out.println("Кука __Host-auth-token не найдена в запросе");
            }
        } else {
            System.out.println("В запросе нет кук");
        }

        System.out.println("=== КОНЕЦ КОНВЕРТЕРА АУТЕНТИФИКАЦИИ ===");
        return null;
    }
}
