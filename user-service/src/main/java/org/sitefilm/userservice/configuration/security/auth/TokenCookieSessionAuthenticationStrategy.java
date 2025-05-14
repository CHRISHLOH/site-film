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
        System.out.println("[ТОКЕН-СЕССИЯ] Обработка аутентификации для создания сессии");
        System.out.println("[ТОКЕН-СЕССИЯ] Тип аутентификации: " + authentication.getClass().getSimpleName());

        if (authentication instanceof UsernamePasswordAuthenticationToken) {
            System.out.println("[ТОКЕН-СЕССИЯ] Создание токена для пользователя: " + authentication.getName());
            
            try {
                Token token = this.tokenCookieFactory.apply(authentication);
                String tokenString = this.tokenStringSerializer.apply(token);
                
                System.out.println("[ТОКЕН-СЕССИЯ] Токен успешно создан, ID: " + token.id());
                System.out.println("[ТОКЕН-СЕССИЯ] Срок действия токена: " + token.expiresAt());
                
                Cookie cookie = new Cookie("__Host-auth-token", tokenString);
                cookie.setPath("/");
                cookie.setDomain(null);
                cookie.setSecure(true);
                cookie.setHttpOnly(true);
                int maxAge = (int) ChronoUnit.SECONDS.between(Instant.now(), token.expiresAt());
                cookie.setMaxAge(maxAge);
                
                System.out.println("[ТОКЕН-СЕССИЯ] Создание куки '__Host-auth-token'");
                System.out.println("[ТОКЕН-СЕССИЯ] Срок действия куки: " + maxAge + " секунд");
                
                response.addCookie(cookie);
                System.out.println("[ТОКЕН-СЕССИЯ] Кука добавлена в ответ");
            } catch (Exception e) {
                System.out.println("[ТОКЕН-СЕССИЯ] ОШИБКА при создании токена: " + e.getMessage());
                throw new SessionAuthenticationException("Не удалось создать токен: " + e.getMessage());
            }
        } else {
            System.out.println("[ТОКЕН-СЕССИЯ] Пропуск создания токена: не UsernamePasswordAuthenticationToken");
        }
    }
}
