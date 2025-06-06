package org.sitefilm.userservice.configuration.security.auth;

import jakarta.servlet.http.HttpServletRequest;
import org.sitefilm.userservice.configuration.security.jwt.model.AuthToken;
import org.springframework.security.authentication.ott.OneTimeTokenAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationConverter;
import org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken;

import java.util.function.Function;
import java.util.stream.Stream;

public class TokenCookieAuthenticationConverter implements AuthenticationConverter {

    private final Function<String, AuthToken> tokenCookieStringDeserializer;

    public TokenCookieAuthenticationConverter(Function<String, AuthToken> tokenCookieStringDeserializer) {
        this.tokenCookieStringDeserializer = tokenCookieStringDeserializer;
    }

    @Override
    public Authentication convert(HttpServletRequest request) {
        if (request.getCookies() != null) {
            return Stream.of(request.getCookies())
                    .filter(cookie -> "__Host-auth-token".equals(cookie.getName()))
                    .findFirst()
                    .map(cookie -> {
                        try {
                            AuthToken authToken = this.tokenCookieStringDeserializer.apply(cookie.getValue());
                            return new PreAuthenticatedAuthenticationToken(authToken, cookie.getValue());
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
