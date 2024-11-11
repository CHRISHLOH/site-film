package org.sitefilm.adminservice.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.sitefilm.adminservice.dto.emaildto.EmailDto;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class AdminEmailService {

    private final EmailProducer emailProducer;

    public void sendAdminEmail(EmailDto email) {
        log.info("Отправка email в кафку");
        try {
            emailProducer.sendMessage(email);
            log.info("email {} отправлен в кафку", email);
        } catch (Exception e) {
            throw new RuntimeException("Error sending email", e);
        }
    }
}
