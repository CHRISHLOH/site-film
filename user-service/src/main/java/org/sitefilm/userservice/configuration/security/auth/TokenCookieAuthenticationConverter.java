package org.sitefilm.userservice.configuration.security.auth;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import org.sitefilm.userservice.configuration.security.jwt.model.Token;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationConverter;
import org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken;

import java.util.Optional;
import java.util.function.Function;
import java.util.stream.Stream;

public class TokenCookieAuthenticationConverter implements AuthenticationConverter {

    private final Function<String, Token> tokenCookieStringDeserializer;

    public TokenCookieAuthenticationConverter(Function<String, Token> tokenCookieStringDeserializer) {
        System.out.println("[ТОКЕН-КОНВЕРТЕР] Создание TokenCookieAuthenticationConverter");
        this.tokenCookieStringDeserializer = tokenCookieStringDeserializer;
    }

    @Override
    public Authentication convert(HttpServletRequest request) {
        System.out.println("[ТОКЕН-КОНВЕРТЕР] Попытка получить токен из куки запроса: " + request.getRequestURI());
        
        if (request.getCookies() != null) {
            System.out.println("[ТОКЕН-КОНВЕРТЕР] Найдено " + request.getCookies().length + " куки в запросе");
            
            return Stream.of(request.getCookies())
                    .filter(cookie -> cookie.getName().equals("__Host-auth-token"))
                    .findFirst()
                    .map(cookie -> {
                        System.out.println("[ТОКЕН-КОНВЕРТЕР] Найдена кука с аутентификационным токеном");
                        try {
                            Token token = this.tokenCookieStringDeserializer.apply(cookie.getValue());
                            System.out.println("[ТОКЕН-КОНВЕРТЕР] Токен успешно десериализован, пользователь: " + token.subject());
                            return new PreAuthenticatedAuthenticationToken(token, cookie.getValue());
                        } catch (Exception e) {
                            System.out.println("[ТОКЕН-КОНВЕРТЕР] ОШИБКА при десериализации токена: " + e.getMessage());
                            return null;
                        }
                    })
                    .orElseGet(() -> {
                        System.out.println("[ТОКЕН-КОНВЕРТЕР] Кука '__Host-auth-token' не найдена");
                        return null;
                    });
        }
        
        System.out.println("[ТОКЕН-КОНВЕРТЕР] В запросе отсутствуют куки");
        return null;
    }
}
