package org.sitefilm.userservice.service;


import jakarta.ws.rs.core.Response;
import org.keycloak.admin.client.Keycloak;
import org.keycloak.representations.idm.CredentialRepresentation;
import org.keycloak.representations.idm.UserRepresentation;
import org.keycloak.admin.client.resource.UsersResource;
import org.keycloak.admin.client.CreatedResponseUtil;

import org.sitefilm.userservice.dto.UserRegistrationDto;
import org.springframework.stereotype.Service;

@Service
public class UserRegistrationService {

    private final Keycloak keycloak;

    public UserRegistrationService(Keycloak keycloak) {
        this.keycloak = keycloak;
    }

    public String registerUser(UserRegistrationDto dto) {
        // 1. Создаём представление пользователя для Keycloak
        UserRepresentation user = new UserRepresentation();
        user.setUsername(dto.getUsername());
        user.setEmail(dto.getEmail());
        user.setEnabled(true);
        user.setFirstName(dto.getFullName()); // Если требуется

        // 2. Создаём пользователя в Keycloak (realm master)
        UsersResource usersResource = keycloak.realm("site-film").users();
        Response response = usersResource.create(user);
        if (response.getStatus() != 201) {
            throw new RuntimeException("Ошибка при создании пользователя в Keycloak, статус: " + response.getStatus());
        }
        String userId = CreatedResponseUtil.getCreatedId(response);

        // 3. Устанавливаем пароль пользователя
        CredentialRepresentation credential = new CredentialRepresentation();
        credential.setTemporary(false);
        credential.setType(CredentialRepresentation.PASSWORD);
        credential.setValue(dto.getPassword());
        keycloak.realm("master").users().get(userId).resetPassword(credential);

        // Если требуется сохранить дополнительную информацию локально (Postgres) – здесь можно вызвать репозиторий

        return userId; // Возвращаем идентификатор нового пользователя
    }
}

