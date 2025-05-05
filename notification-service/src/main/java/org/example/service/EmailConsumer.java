package org.example.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.example.dto.EmailDto;
import org.example.dto.VerificationCodeDto;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Component;

@Slf4j
@Component
@RequiredArgsConstructor
public class EmailConsumer {

    private static final String orderTopic = "verification-email";

    private final ObjectMapper objectMapper;



    @KafkaListener(topics = orderTopic)
    public void consumeMessage(String message) throws JsonProcessingException {
        log.info("message consumed {}", message);
        VerificationCodeDto verificationCode = objectMapper.readValue(message, VerificationCodeDto.class);
        System.out.println(verificationCode);
    }
}
