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
        System.out.println("=== НАЧАЛО СТРАТЕГИИ АУТЕНТИФИКАЦИИ ===");
        System.out.println("Тип аутентификации: " + authentication.getClass().getSimpleName());

        if (authentication instanceof UsernamePasswordAuthenticationToken) {
            System.out.println("Создаем токен и куку");
            var token = this.tokenCookieFactory.apply(authentication);
            var tokenString = this.tokenStringSerializer.apply(token);

            System.out.println("Токен создан: " + token.id());
            System.out.println("Срок действия до: " + token.expiresAt());

            var cookie = new Cookie("__Host-auth-token", tokenString);
            cookie.setPath("/");
            cookie.setDomain(null);
            cookie.setSecure(true);
            cookie.setHttpOnly(true);
            cookie.setMaxAge((int) ChronoUnit.SECONDS.between(Instant.now(), token.expiresAt()));

            System.out.println("Настройки куки:");
            System.out.println("  - Имя: " + cookie.getName());
            System.out.println("  - Путь: " + cookie.getPath());
            System.out.println("  - Домен: " + (cookie.getDomain() == null ? "не задан" : cookie.getDomain()));
            System.out.println("  - Secure: " + cookie.getSecure());
            System.out.println("  - HttpOnly: " + cookie.isHttpOnly());
            System.out.println("  - MaxAge: " + cookie.getMaxAge());

            response.addCookie(cookie);

            // Проверка заголовка Set-Cookie в ответе
            System.out.println("Заголовок Set-Cookie: " + response.getHeader("Set-Cookie"));

            System.out.println("Кука добавлена в ответ");
        }
        System.out.println("=== КОНЕЦ СТРАТЕГИИ АУТЕНТИФИКАЦИИ ===");
    }
}
