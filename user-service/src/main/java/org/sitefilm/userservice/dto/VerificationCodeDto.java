package org.sitefilm.userservice.dto;

import lombok.*;

import java.time.Instant;

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
