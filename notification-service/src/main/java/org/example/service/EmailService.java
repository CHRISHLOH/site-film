package org.example.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.example.dto.EmailDto;
import org.example.entity.EmailEntity;
import org.example.repository.EmailRepository;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@RequiredArgsConstructor
public class EmailService {

    private final EmailRepository emailRepository;

    public void saveEmailToDatabase(EmailDto email) {
        log.info("Saving email {} to database", email);

        EmailEntity emailEntity = new EmailEntity();
        emailEntity.setFrom(email.from());
        emailEntity.setTo(email.to());
        emailEntity.setSubject(email.subject());
        emailEntity.setBody(email.body());

        emailRepository.save(emailEntity);
        log.info("Email {} saved", email);
    }

}