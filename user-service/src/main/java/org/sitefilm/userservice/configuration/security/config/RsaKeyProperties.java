package org.sitefilm.userservice.configuration.security.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;

@Configuration
public class RsaKeyProperties {

    @Value("${jwt.rsa.private-key-pem}")
    private String privateKeyPem;
    @Value("${jwt.rsa.public-key-pem}")
    private String publicKeyPem;

    public RSAPrivateKey getPrivateKey() throws Exception {
        return RsaKeyProvider.parsePkcs8PrivateKey(privateKeyPem);
    }
    public RSAPublicKey getPublicKey() throws Exception {
        return RsaKeyProvider.parsePkcs8PublicKey(publicKeyPem);
    }
}
