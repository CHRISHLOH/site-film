package org.sitefilm.userservice.service;

import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.dto.main.user.UserDto;
import org.sitefilm.userservice.entity.Role;
import org.sitefilm.userservice.entity.User;
import org.sitefilm.userservice.repository.UserRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Set;

@Service
@RequiredArgsConstructor
public class UserRegistrationService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public void register(UserDto user) {
        String password = passwordEncoder.encode(user.getPassword());

        Role role = new Role();
        role.setId(2L);
        role.setName("USER");
        Set<Role> roles = new HashSet<>();
        roles.add(role);

        User userEntity = User.builder()
                .email(user.getEmail())
                .password(password)
                .roles(roles)
                .build();

        userRepository.save(userEntity);
    }
}
