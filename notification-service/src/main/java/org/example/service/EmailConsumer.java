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

    private static final String verification_topic = "verification-email";

    private final ObjectMapper objectMapper;



    @KafkaListener(topics = verification_topic)
    public void consumeMessage(VerificationCodeDto verificationCode) throws JsonProcessingException {
        System.out.println(verificationCode);
    }
}
