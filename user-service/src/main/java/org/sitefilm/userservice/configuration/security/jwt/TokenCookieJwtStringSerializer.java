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
        System.out.println("[JWT-СЕРИАЛИЗАТОР] Инициализация сериализатора JWT с приватным ключом");
        this.privateKey = privateKey;
    }

    @Override
    public String apply(Token token) {
        System.out.println("[JWT-СЕРИАЛИЗАТОР] Начало сериализации токена в JWT");
        System.out.println("[JWT-СЕРИАЛИЗАТОР] Токен ID: " + token.id());
        System.out.println("[JWT-СЕРИАЛИЗАТОР] Субъект: " + token.subject());
        System.out.println("[JWT-СЕРИАЛИЗАТОР] Дата создания: " + token.createdAt());
        System.out.println("[JWT-СЕРИАЛИЗАТОР] Дата истечения: " + token.expiresAt());
        System.out.println("[JWT-СЕРИАЛИЗАТОР] Роли: " + String.join(", ", token.authorities()));
        
        try {
            System.out.println("[JWT-СЕРИАЛИЗАТОР] Создание заголовка JWT с алгоритмом RS256");
            JWSHeader header = new JWSHeader.Builder(JWSAlgorithm.RS256).build();
            
            System.out.println("[JWT-СЕРИАЛИЗАТОР] Формирование набора утверждений JWT");
            JWTClaimsSet claimsSet = new JWTClaimsSet.Builder()
                    .subject(token.subject())
                    .issueTime(Date.from(token.createdAt()))
                    .expirationTime(Date.from(token.expiresAt()))
                    .claim("authorities", token.authorities())
                    .jwtID(token.id().toString())
                    .build();
                    
            System.out.println("[JWT-СЕРИАЛИЗАТОР] Создание подписанного JWT");
            SignedJWT signedJWT = new SignedJWT(header, claimsSet);
            
            System.out.println("[JWT-СЕРИАЛИЗАТОР] Инициализация подписывающего с использованием приватного ключа");
            JWSSigner signer = new RSASSASigner(privateKey);
            
            System.out.println("[JWT-СЕРИАЛИЗАТОР] Подписание JWT");
            signedJWT.sign(signer);
            
            String serialized = signedJWT.serialize();
            System.out.println("[JWT-СЕРИАЛИЗАТОР] JWT успешно сериализован");
            
            return serialized;
        } catch (JOSEException e) {
            System.out.println("[JWT-СЕРИАЛИЗАТОР] ОШИБКА при подписании JWT: " + e.getMessage());
            e.printStackTrace();
            throw new RuntimeException("Failed to sign JWT", e);
        }
    }
}
