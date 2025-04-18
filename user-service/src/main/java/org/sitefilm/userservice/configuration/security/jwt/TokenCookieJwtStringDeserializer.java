package org.sitefilm.userservice.configuration.security.jwt;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWSVerifier;
import com.nimbusds.jose.crypto.RSASSAVerifier;
import com.nimbusds.jwt.JWTClaimsSet;
import com.nimbusds.jwt.SignedJWT;
import org.sitefilm.userservice.configuration.security.jwt.model.Token;

import java.security.PublicKey;
import java.security.interfaces.RSAPublicKey;
import java.text.ParseException;
import java.util.UUID;
import java.util.function.Function;

public class TokenCookieJwtStringDeserializer implements Function<String, Token> {

    private final PublicKey publicKey;

    public TokenCookieJwtStringDeserializer(PublicKey publicKey) {
        this.publicKey = publicKey;
    }

    @Override
    public Token apply(String string) {
        try {
            SignedJWT signedJWT = SignedJWT.parse(string);
            JWSVerifier verifier = new RSASSAVerifier((RSAPublicKey) publicKey);
            if (signedJWT.verify(verifier)) {
                JWTClaimsSet claimsSet = signedJWT.getJWTClaimsSet();
                return new Token(
                        UUID.fromString(claimsSet.getJWTID()),
                        claimsSet.getSubject(),
                        claimsSet.getStringListClaim("authorities"),
                        claimsSet.getIssueTime().toInstant(),
                        claimsSet.getExpirationTime().toInstant()
                );
            } else {
                throw new RuntimeException("Invalid signature");
            }
        } catch (ParseException | JOSEException e) {
            throw new RuntimeException("Failed to parse or verify JWT", e);
        }
    }
}
