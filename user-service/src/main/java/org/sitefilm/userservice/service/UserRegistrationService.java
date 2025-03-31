package org.sitefilm.userservice.service;


import jakarta.ws.rs.core.Response;
import org.keycloak.admin.client.Keycloak;
import org.keycloak.representations.idm.CredentialRepresentation;
import org.keycloak.representations.idm.UserRepresentation;
import org.keycloak.admin.client.resource.UsersResource;
import org.keycloak.admin.client.CreatedResponseUtil;

import org.sitefilm.userservice.dto.UserRegistrationDto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserRegistrationService {

    private final Keycloak keycloak;

    public UserRegistrationService(Keycloak keycloak) {
        this.keycloak = keycloak;
    }

    public String registerUser(UserRegistrationDto dto) {
        System.out.println(dto);
        UserRepresentation user = new UserRepresentation();
        user.setUsername(dto.getUsername());
        user.setEmail(dto.getEmail());
        user.setEnabled(true);
        user.setFirstName(dto.getFullName());

        UsersResource usersResource = keycloak.realm("site-film").users();
        Response response = usersResource.create(user);

        String userId = CreatedResponseUtil.getCreatedId(response);

        CredentialRepresentation credential = new CredentialRepresentation();
        credential.setTemporary(false);
        credential.setType(CredentialRepresentation.PASSWORD);
        credential.setValue(dto.getPassword());
        keycloak.realm("site-film").users().get(userId).resetPassword(credential);

        return userId;
    }
}

