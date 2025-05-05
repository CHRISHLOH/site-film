package org.sitefilm.userservice.controller.rest;

import com.fasterxml.jackson.core.JsonProcessingException;
import org.sitefilm.userservice.dto.main.user.UserDto;
import org.sitefilm.userservice.service.UserRegistrationService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;


@RestController
@RequestMapping("/api/auth")
public class RegistrationController {

    private final UserRegistrationService registrationService;

    public RegistrationController(UserRegistrationService registrationService) {
        this.registrationService = registrationService;
    }

    @PostMapping("/register")
    public ResponseEntity<String> register(@RequestBody UserDto dto) {
        registrationService.register(dto);
        return ResponseEntity.ok("Сохранен");
    }

    @PutMapping("/verify")
    public ResponseEntity<String> verify(String codeFromEmail, Principal principal) {
        registrationService.verify(codeFromEmail, principal.getName());
        return ResponseEntity.ok("Верифицирован");
    }

    @GetMapping("/resend-verification")
    public ResponseEntity<String> resendVerification(Principal principal) throws JsonProcessingException {
        registrationService.sendVerificationEmail(principal.getName());
        return ResponseEntity.ok("Отправлен");
    }
}
