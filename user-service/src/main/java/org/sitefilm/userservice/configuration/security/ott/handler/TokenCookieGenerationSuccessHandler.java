package org.sitefilm.userservice.configuration.security.ott.handler;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.configuration.security.cookie.GenerateCookie;
import org.sitefilm.userservice.dto.VerificationCodeDto;
import org.sitefilm.userservice.service.kafka.EmailVerificationProducer;
import org.springframework.http.MediaType;
import org.springframework.security.authentication.ott.OneTimeToken;
import org.springframework.security.web.authentication.ott.OneTimeTokenGenerationSuccessHandler;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.time.Instant;

@Component
@RequiredArgsConstructor
public class TokenCookieGenerationSuccessHandler implements OneTimeTokenGenerationSuccessHandler {
    private final EmailVerificationProducer emailVerificationProducer;
    private final GenerateCookie generateCookie;

    @Override
    public void handle(HttpServletRequest request, HttpServletResponse response, OneTimeToken oneTimeToken) throws IOException {
        System.out.println("TokenCookieGenerationSuccessHandler начал работу");
        emailVerificationProducer.sendVerificationCode(
                VerificationCodeDto.builder()
                        .email(oneTimeToken.getUsername())
                        .code(oneTimeToken.getTokenValue())
                        .createdAt(Instant.now())
                        .expiresAt(Instant.now().plusSeconds(600))
                        .used(false)
                        .build()

        );
        Cookie cookie = generateCookie.generateVerificationCookie(oneTimeToken.getUsername());
        response.addCookie(cookie);
        response.setStatus(HttpServletResponse.SC_OK);
        response.setContentType(MediaType.APPLICATION_JSON_VALUE);
        String body = "{\"message\":\"Verification code sent\"}";
        response.getWriter().write(body);
    }
}
