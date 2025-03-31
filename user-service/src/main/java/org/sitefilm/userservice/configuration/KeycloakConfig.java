package org.sitefilm.userservice.configuration;

import org.keycloak.OAuth2Constants;
import org.keycloak.admin.client.Keycloak;
import org.keycloak.admin.client.KeycloakBuilder;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class KeycloakConfig {

    // issuer-uri указывает полный URL: http://localhost:8088/realms/master
    @Value("${spring.security.oauth2.client.provider.keycloak.issuer-uri}")
    private String issuerUri;

    // Эти настройки читаем из application.yml (например, client для регистрации пользователя)
    @Value("${spring.security.oauth2.client.registration.keycloak.client-id}")
    private String clientId;

    @Value("${spring.security.oauth2.client.registration.keycloak.client-secret}")
    private String clientSecret;

    @Value("admin")
    private String adminUsername;

    @Value("admin")
    private String adminPassword;

    // Из issuer-uri получаем базовый URL для Keycloak (без /realms/master)
    private String getServerUrl() {
        return issuerUri.substring(0, issuerUri.indexOf("/realms"));
    }

    @Bean
    public Keycloak keycloakAdminClient() {

        return KeycloakBuilder.builder()
                .serverUrl(getServerUrl())
                .realm("site-film") // Используем realm master
                .username(adminUsername)
                .password(adminPassword)
                .clientId(clientId)
                .clientSecret(clientSecret)
                .grantType(OAuth2Constants.PASSWORD)
                .build();
    }
}