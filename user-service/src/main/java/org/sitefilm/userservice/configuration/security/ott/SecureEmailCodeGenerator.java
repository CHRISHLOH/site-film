package org.sitefilm.userservice.configuration.security.ott;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.security.SecureRandom;

@Slf4j
@Component
public class SecureEmailCodeGenerator {

    private static final char[] DIGITS = "0123456789".toCharArray();
    private final SecureRandom secureRandom;
    private final int codeLength;

    public SecureEmailCodeGenerator() {
        this(6);
    }

    public SecureEmailCodeGenerator(int codeLength) {
        if (codeLength < 1) {
            throw new IllegalArgumentException("codeLength must be ≥ 1");
        }
        this.codeLength = codeLength;
        this.secureRandom = new SecureRandom();
    }

    public String generate() {
        StringBuilder sb = new StringBuilder(codeLength);
        for (int i = 0; i < codeLength; i++) {
            int idx = secureRandom.nextInt(DIGITS.length);
            sb.append(DIGITS[idx]);
        }
        return sb.toString();
    }
}

