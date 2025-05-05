package org.sitefilm.userservice.service.kafka;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.sitefilm.userservice.dto.VerificationCodeDto;
import org.springframework.kafka.core.KafkaTemplate;
import org.springframework.stereotype.Component;

@Slf4j
@Component
@RequiredArgsConstructor
public class EmailVerificationProducer {

    private final ObjectMapper objectMapper;
    private final KafkaTemplate<String, String> kafkaTemplate;

    public void sendVerificationCode(VerificationCodeDto code) throws JsonProcessingException {
        String emailAsMessage = objectMapper.writeValueAsString(code);
        kafkaTemplate.send("verification-email", emailAsMessage);
    }
}
