package org.sitefilm.userservice.service.security;

import org.sitefilm.userservice.configuration.security.jwt.model.Token;
import org.sitefilm.userservice.configuration.security.auth.TokenUser;
import org.sitefilm.userservice.repository.DeactivatedTokenRepository;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.AuthenticationUserDetailsService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken;
import org.springframework.stereotype.Service;

import java.time.Instant;
import java.util.stream.Collectors;

@Service
public class TokenAuthenticationUserDetailsService
        implements AuthenticationUserDetailsService<PreAuthenticatedAuthenticationToken> {

    private final DeactivatedTokenRepository deactivatedTokenRepository;

    public TokenAuthenticationUserDetailsService(DeactivatedTokenRepository deactivatedTokenRepository) {
        System.out.println("[ТОКЕН-СЕРВИС] Инициализация TokenAuthenticationUserDetailsService");
        this.deactivatedTokenRepository = deactivatedTokenRepository;
    }

    @Override
    public UserDetails loadUserDetails(PreAuthenticatedAuthenticationToken authenticationToken)
            throws UsernameNotFoundException {
        System.out.println("[ТОКЕН-СЕРВИС] ========================================");
        System.out.println("[ТОКЕН-СЕРВИС] Загрузка деталей пользователя из токена");
        System.out.println("[ТОКЕН-СЕРВИС] Тип Principal: " + 
                (authenticationToken.getPrincipal() != null ? 
                authenticationToken.getPrincipal().getClass().getName() : "null"));
        
        if (authenticationToken.getPrincipal() instanceof Token token) {
            System.out.println("[ТОКЕН-СЕРВИС] Получен валидный токен с ID: " + token.id());
            
            // Проверяем, есть ли токен в списке деактивированных
            boolean isDeactivated = deactivatedTokenRepository.existsById(token.id());
            System.out.println("[ТОКЕН-СЕРВИС] Токен присутствует в списке деактивированных: " + isDeactivated);
            
            // Проверяем, не истек ли срок действия токена
            boolean isExpired = token.expiresAt().isBefore(Instant.now());
            System.out.println("[ТОКЕН-СЕРВИС] Токен истек: " + isExpired);
            
            boolean isTokenActive = !isDeactivated && !isExpired;
            
            System.out.println("[ТОКЕН-СЕРВИС] Пользователь: " + token.subject());
            System.out.println("[ТОКЕН-СЕРВИС] Активность токена: " + isTokenActive);
            System.out.println("[ТОКЕН-СЕРВИС] Срок действия токена до: " + token.expiresAt());
            System.out.println("[ТОКЕН-СЕРВИС] Роли пользователя: " + String.join(", ", token.authorities()));
            
            TokenUser user = new TokenUser(token.subject(), "nopassword", true, true,
                    isTokenActive, true,
                    token.authorities().stream()
                            .map(SimpleGrantedAuthority::new)
                            .collect(Collectors.toList()), token);
            
            if (isTokenActive) {
                System.out.println("[ТОКЕН-СЕРВИС] Пользователь успешно аутентифицирован");
            } else {
                System.out.println("[ТОКЕН-СЕРВИС] Токен недействителен, но пользователь создан с флагом isCredentialsNonExpired=false");
            }
            
            System.out.println("[ТОКЕН-СЕРВИС] ========================================");
            return user;
        }
        
        System.out.println("[ТОКЕН-СЕРВИС] ОШИБКА: Principal не является токеном");
        System.out.println("[ТОКЕН-СЕРВИС] ========================================");
        throw new UsernameNotFoundException("Principal must be of type Token");
    }
}
