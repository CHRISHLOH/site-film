package org.sitefilm.contentservice.configutation;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;

@Configuration
public class RsaKeyProperties {
    @Value("${jwt.rsa.public-key-pem}")
    private String publicKeyPem;

    public RSAPublicKey getPublicKey() throws Exception {
        return RsaKeyProvider.parsePkcs8PublicKey(publicKeyPem);
    }
}
