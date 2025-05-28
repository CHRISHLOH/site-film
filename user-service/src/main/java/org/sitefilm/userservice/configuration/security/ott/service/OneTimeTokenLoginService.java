package org.sitefilm.userservice.configuration.security.ott.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.configuration.security.jwt.model.VerificationToken;
import org.sitefilm.userservice.configuration.security.ott.SecureEmailCodeGenerator;
import org.sitefilm.userservice.configuration.security.ott.TokenOTT;
import org.sitefilm.userservice.dto.VerificationCodeDto;
import org.sitefilm.userservice.entity.VerificationCode;
import org.sitefilm.userservice.repository.VerificationCodeRepository;
import org.sitefilm.userservice.service.kafka.EmailVerificationProducer;
import org.springframework.security.authentication.ott.GenerateOneTimeTokenRequest;
import org.springframework.security.authentication.ott.OneTimeToken;
import org.springframework.security.authentication.ott.OneTimeTokenAuthenticationToken;
import org.springframework.security.authentication.ott.OneTimeTokenService;
import org.springframework.stereotype.Service;

import java.time.Instant;

@Service
@RequiredArgsConstructor
public class OneTimeTokenLoginService implements OneTimeTokenService {
    
    private final SecureEmailCodeGenerator secureEmailCodeGenerator;
    private final VerificationCodeRepository verificationCodeRepository;

    @Override
    public OneTimeToken generate(GenerateOneTimeTokenRequest request) {
        System.out.println("generate one-time token");
        Instant expiresAt = Instant.now().plusSeconds(600);
        String code = secureEmailCodeGenerator.generate();
        VerificationCode verificationCode = VerificationCode.builder()
                .email(request.getUsername())
                .code(code)
                .createdAt(Instant.now())
                .expiresAt(expiresAt)
                .used(false)
                .build();
        verificationCodeRepository.save(verificationCode);

        return TokenOTT.builder()
                .token(code)
                .username(request.getUsername())
                .expires(expiresAt)
                .build();
    }

    @Override
    public OneTimeToken consume(OneTimeTokenAuthenticationToken authenticationToken) {
        VerificationToken verificationToken = (VerificationToken) authenticationToken.getPrincipal();

        System.out.println("NACHALO PROVERKI");
        if(!verificationCodeRepository.compareUserCodeWithDB(authenticationToken.getTokenValue(), verificationToken.email(), Instant.now()))
        {
            throw new RuntimeException("OSHIBKA");
        }
        return TokenOTT.builder()
                .token(authenticationToken.getTokenValue())
                .username(verificationToken.email())
                .expires(Instant.now().plusSeconds(600))
                .build();
    }
}
