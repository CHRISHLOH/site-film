package org.sitefilm.userservice.controller.rest;

import com.fasterxml.jackson.core.JsonProcessingException;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;
import org.sitefilm.userservice.configuration.security.jwt.auth.AuthTokenCookieJwtStringSerializer;
import org.sitefilm.userservice.configuration.security.jwt.model.AuthToken;
import org.sitefilm.userservice.dto.main.user.UserDto;
import org.sitefilm.userservice.service.UserRegistrationService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;
@RestController
@RequestMapping("/api/auth")
public class RegistrationController {

    private final AuthTokenCookieJwtStringSerializer authTokenCookieJwtStringSerializer;
    private final UserRegistrationService registrationService;

    public RegistrationController(AuthTokenCookieJwtStringSerializer authTokenCookieJwtStringSerializer, UserRegistrationService registrationService) {
        this.authTokenCookieJwtStringSerializer = authTokenCookieJwtStringSerializer;
        this.registrationService = registrationService;
    }

    @PostMapping("/register")
    public ResponseEntity<String> register(@RequestBody UserDto dto, HttpServletResponse response) {
        String email = registrationService.register(dto);
        return ResponseEntity.ok(email);
    }

    @GetMapping("/resend-verification")
    public ResponseEntity<String> resendVerification(Principal principal) throws JsonProcessingException {
        registrationService.sendVerificationEmail(principal.getName());
        return ResponseEntity.ok("Отправлен");
    }
}
