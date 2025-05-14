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
        System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] Инициализация десериализатора JWT с публичным ключом");
        this.publicKey = publicKey;
    }

    @Override
    public Token apply(String string) {
        System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] Начало десериализации JWT");
        
        try {
            System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] Парсинг строки JWT");
            SignedJWT signedJWT = SignedJWT.parse(string);
            
            System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] Создание верификатора с использованием RSA публичного ключа");
            JWSVerifier verifier = new RSASSAVerifier((RSAPublicKey) publicKey);
            
            System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] Проверка подписи JWT");
            if (signedJWT.verify(verifier)) {
                System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] Подпись JWT проверена успешно");
                
                JWTClaimsSet claimsSet = signedJWT.getJWTClaimsSet();
                System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] Извлечение данных из JWT");
                System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] JWT ID: " + claimsSet.getJWTID());
                System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] Субъект: " + claimsSet.getSubject());
                System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] Дата выпуска: " + claimsSet.getIssueTime());
                System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] Дата истечения: " + claimsSet.getExpirationTime());
                
                Token token = new Token(
                        UUID.fromString(claimsSet.getJWTID()),
                        claimsSet.getSubject(),
                        claimsSet.getStringListClaim("authorities"),
                        claimsSet.getIssueTime().toInstant(),
                        claimsSet.getExpirationTime().toInstant()
                );
                
                System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] Роли: " + String.join(", ", token.authorities()));
                System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] Токен успешно создан");
                
                return token;
            } else {
                System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] ОШИБКА: Недействительная подпись JWT");
                throw new RuntimeException("Invalid signature");
            }
        } catch (ParseException e) {
            System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] ОШИБКА при парсинге JWT: " + e.getMessage());
            throw new RuntimeException("Failed to parse JWT", e);
        } catch (JOSEException e) {
            System.out.println("[JWT-ДЕСЕРИАЛИЗАТОР] ОШИБКА при проверке JWT: " + e.getMessage());
            throw new RuntimeException("Failed to verify JWT", e);
        }
    }
}
