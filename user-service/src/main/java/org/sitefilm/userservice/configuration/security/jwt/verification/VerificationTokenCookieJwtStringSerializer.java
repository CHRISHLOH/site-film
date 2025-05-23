package org.sitefilm.userservice.configuration.security.jwt.verification;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWSAlgorithm;
import com.nimbusds.jose.JWSHeader;
import com.nimbusds.jose.JWSSigner;
import com.nimbusds.jose.crypto.RSASSASigner;
import com.nimbusds.jwt.JWTClaimsSet;
import com.nimbusds.jwt.SignedJWT;
import org.sitefilm.userservice.configuration.security.jwt.model.AuthToken;
import org.sitefilm.userservice.configuration.security.jwt.model.VerificationToken;

import java.security.PrivateKey;
import java.util.Date;
import java.util.function.Function;

public class VerificationTokenCookieJwtStringSerializer implements Function<VerificationToken, String> {

    private final PrivateKey privateKey;

    public VerificationTokenCookieJwtStringSerializer(PrivateKey privateKey) {
        this.privateKey = privateKey;
    }

    @Override
    public String apply(VerificationToken verificationToken) {
        System.out.println("TokenCookieJwtStringSerializer начал работу");
        try {
            JWSHeader header = new JWSHeader.Builder(JWSAlgorithm.RS256).build();

            JWTClaimsSet claimsSet = new JWTClaimsSet.Builder()
                    .subject(verificationToken.email())
                    .issueTime(Date.from(verificationToken.createdAt()))
                    .expirationTime(Date.from(verificationToken.expiredAt()))
                    .claim("tokenType", verificationToken.tokenType())
                    .jwtID(verificationToken.id().toString())
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
