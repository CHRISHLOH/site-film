package org.example.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.example.dto.VerificationCodeDto;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

@Slf4j
@Component
@RequiredArgsConstructor
public class EmailConsumer {

    private static final String orderTopic = "verification-email";

    @KafkaListener(topics = orderTopic)
    public void consumeMessage(VerificationCodeDto verificationCode) {
        try {
            log.info("Получен код верификации: {}", verificationCode.toString());
            // TODO: Добавить здесь логику отправки email
        } catch (Exception e) {
            log.error("Ошибка при обработке кода верификации: {}", verificationCode, e);
            throw new RuntimeException("Ошибка при обработке кода верификации", e);
        }
    }
}
