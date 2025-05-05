package org.sitefilm.userservice.service.factory;

import org.sitefilm.userservice.dto.VerificationCodeDto;

import java.security.SecureRandom;
import java.time.Instant;
import java.time.temporal.ChronoUnit;
import java.util.function.Supplier;

public class GetVerificationEmailCodeFactory implements Supplier<VerificationCodeDto> {

    private static final char[] DIGITS = "0123456789".toCharArray();
    private final SecureRandom secureRandom = new SecureRandom();
    private final String email;

    public GetVerificationEmailCodeFactory(String email) {
        this.email = email;
    }

    @Override
    public VerificationCodeDto get() {
        return VerificationCodeDto.builder()
                .email(email)
                .code(getCode())
                .isUsed(false)
                .createdAt(Instant.now())
                .expiresAt(Instant.now().plus(15, ChronoUnit.MINUTES))
                .build();
    }

    private String getCode(){
        int codeLength = 6;
        StringBuilder sb = new StringBuilder(codeLength);
        for (int i = 0; i < codeLength; i++) {
            sb.append(DIGITS[secureRandom.nextInt(DIGITS.length)]);
        }
        return sb.toString();
    }
}
