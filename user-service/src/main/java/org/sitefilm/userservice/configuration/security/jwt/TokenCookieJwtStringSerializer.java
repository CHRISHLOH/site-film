package org.sitefilm.userservice.configuration.security.jwt;

import com.nimbusds.jose.*;
import com.nimbusds.jose.crypto.RSASSASigner;
import com.nimbusds.jwt.EncryptedJWT;
import com.nimbusds.jwt.JWTClaimsSet;
import com.nimbusds.jwt.SignedJWT;
import lombok.Setter;
import org.sitefilm.userservice.configuration.security.jwt.model.Token;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.security.PrivateKey;
import java.security.interfaces.RSAPrivateKey;
import java.util.Date;
import java.util.function.Function;

public class TokenCookieJwtStringSerializer implements Function<Token, String> {

    private final PrivateKey privateKey;

    public TokenCookieJwtStringSerializer(PrivateKey privateKey) {
        this.privateKey = privateKey;
    }

    @Override
    public String apply(Token token) {
        JWSHeader header = new JWSHeader.Builder(JWSAlgorithm.RS256).build();
        JWTClaimsSet claimsSet = new JWTClaimsSet.Builder()
                .subject(token.subject())
                .issueTime(Date.from(token.createdAt()))
                .expirationTime(Date.from(token.expiresAt()))
                .claim("authorities", token.authorities())
                .jwtID(token.id().toString())
                .build();
        SignedJWT signedJWT = new SignedJWT(header, claimsSet);
        try {
            JWSSigner signer = new RSASSASigner(privateKey);
            signedJWT.sign(signer);
            return signedJWT.serialize();
        } catch (JOSEException e) {
            throw new RuntimeException("Failed to sign JWT", e);
        }
    }
}
