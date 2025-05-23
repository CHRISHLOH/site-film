package org.sitefilm.userservice.configuration.security.auth;

import jakarta.servlet.http.HttpServletRequest;
import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.configuration.security.jwt.model.AuthToken;
import org.sitefilm.userservice.configuration.security.jwt.model.VerificationToken;
import org.sitefilm.userservice.configuration.security.jwt.verification.VerificationTokenCookieJwtStringDeserializer;
import org.springframework.security.authentication.ott.OneTimeTokenAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationConverter;
import org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken;
import org.springframework.stereotype.Component;

import java.util.stream.Stream;

@Component
@RequiredArgsConstructor
public class TokenCookieVerificationConverter implements AuthenticationConverter {

    private final VerificationTokenCookieJwtStringDeserializer verificationTokenCookieJwtStringDeserializer;

    @Override
    public Authentication convert(HttpServletRequest request) {
        if (request.getCookies() != null) {
            return Stream.of(request.getCookies())
                    .filter(cookie -> "__Host-verification-token".equals(cookie.getName()))
                    .findFirst()
                    .map(cookie -> {
                        try {
                            VerificationToken verificationToken = this.verificationTokenCookieJwtStringDeserializer.apply(cookie.getValue());
                            return new OneTimeTokenAuthenticationToken(verificationToken, cookie.getValue());
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

