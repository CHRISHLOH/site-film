package org.example.dto;

import lombok.*;

import java.time.Instant;

@ToString
@Setter
@Getter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class VerificationCodeDto {
    private String code;
    private String email;
    private Instant createdAt;
    private Instant expiresAt;
    private boolean isUsed;
}
