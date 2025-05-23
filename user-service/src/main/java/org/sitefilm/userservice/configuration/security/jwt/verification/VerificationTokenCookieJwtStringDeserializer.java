package org.sitefilm.userservice.configuration.security.jwt.verification;

import com.nimbusds.jose.JOSEException;
import com.nimbusds.jose.JWSVerifier;
import com.nimbusds.jose.crypto.RSASSAVerifier;
import com.nimbusds.jwt.JWTClaimsSet;
import com.nimbusds.jwt.SignedJWT;
import org.sitefilm.userservice.configuration.security.jwt.model.AuthToken;
import org.sitefilm.userservice.configuration.security.jwt.model.VerificationToken;

import java.security.PublicKey;
import java.security.interfaces.RSAPublicKey;
import java.text.ParseException;
import java.util.UUID;
import java.util.function.Function;

public class VerificationTokenCookieJwtStringDeserializer implements Function<String, VerificationToken> {

    private final PublicKey publicKey;

    public VerificationTokenCookieJwtStringDeserializer(PublicKey publicKey) {
        this.publicKey = publicKey;
    }

    @Override
    public VerificationToken apply(String string) {
        try {
            SignedJWT signedJWT = SignedJWT.parse(string);
            JWSVerifier verifier = new RSASSAVerifier((RSAPublicKey) publicKey);
            if (signedJWT.verify(verifier)) {
                JWTClaimsSet claimsSet = signedJWT.getJWTClaimsSet();

                return new VerificationToken(
                        UUID.fromString(claimsSet.getJWTID()),
                        claimsSet.getSubject(),
                        claimsSet.getStringClaim("tokenType"),
                        claimsSet.getIssueTime().toInstant(),
                        claimsSet.getExpirationTime().toInstant()
                );
            } else {
                throw new RuntimeException("Invalid signature");
            }
        } catch (ParseException e) {
            throw new RuntimeException("Failed to parse JWT", e);
        } catch (JOSEException e) {
            throw new RuntimeException("Failed to verify JWT", e);
        }
    }
}
