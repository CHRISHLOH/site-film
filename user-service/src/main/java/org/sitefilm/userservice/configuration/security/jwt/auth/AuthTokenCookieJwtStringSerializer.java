package org.sitefilm.userservice.configuration.security.jwt.auth;

import com.nimbusds.jose.*;
import com.nimbusds.jose.crypto.RSASSASigner;
import com.nimbusds.jwt.JWTClaimsSet;
import com.nimbusds.jwt.SignedJWT;
import org.sitefilm.userservice.configuration.security.jwt.model.AuthToken;

import java.security.PrivateKey;
import java.util.Date;
import java.util.function.Function;

public class AuthTokenCookieJwtStringSerializer implements Function<AuthToken, String> {

    private final PrivateKey privateKey;

    public AuthTokenCookieJwtStringSerializer(PrivateKey privateKey) {
        this.privateKey = privateKey;
    }

    @Override
    public String apply(AuthToken authToken) {
        System.out.println("TokenCookieJwtStringSerializer начал работу");
        try {
            JWSHeader header = new JWSHeader.Builder(JWSAlgorithm.RS256).build();

            JWTClaimsSet claimsSet = new JWTClaimsSet.Builder()
                    .subject(authToken.subject())
                    .issueTime(Date.from(authToken.createdAt()))
                    .expirationTime(Date.from(authToken.expiresAt()))
                    .claim("authorities", authToken.authorities())
                    .claim("tokenType", authToken.tokenType())
                    .jwtID(authToken.id().toString())
                    .build();

            SignedJWT signedJWT = new SignedJWT(header, claimsSet);
            JWSSigner signer = new RSASSASigner(privateKey);
            signedJWT.sign(signer);

            return signedJWT.serialize();
        } catch (JOSEException e) {
            throw new RuntimeException("Failed to sign JWT", e);
        }
    }
}
