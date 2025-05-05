package org.sitefilm.userservice.service.kafka;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.sitefilm.userservice.dto.VerificationCodeDto;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Component;

@Slf4j
@Component
@RequiredArgsConstructor
public class EmailVerificationProducer {

    private final KafkaTemplate<String, VerificationCodeDto> kafkaTemplate;

    public void sendVerificationCode(VerificationCodeDto code) {
        log.info("Отправка кода верификации в Kafka: {}", code);
        kafkaTemplate.send("verification-email", code);
    }
}
