package org.sitefilm.adminservice.controller;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.sitefilm.adminservice.dto.emaildto.EmailDto;
import org.sitefilm.adminservice.service.AdminEmailService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping("/email/send")
@Slf4j
public class AdminEmailController {

    private final AdminEmailService adminEmailService;

    @PostMapping
    public ResponseEntity<String> sendEmail(@RequestBody EmailDto email) {
            log.info("Контроллер. Отправка email: {}", email);
            adminEmailService.sendAdminEmail(email);
            return ResponseEntity.ok("Email sent");
    }
}
