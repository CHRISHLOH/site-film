package org.sitefilm.userservice.service;

import com.fasterxml.jackson.core.JsonProcessingException;
import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.dto.VerificationCodeDto;
import org.sitefilm.userservice.dto.main.user.UserDto;
import org.sitefilm.userservice.entity.Role;
import org.sitefilm.userservice.entity.User;
import org.sitefilm.userservice.repository.UserRepository;
import org.sitefilm.userservice.repository.VerificationCodeRepository;
import org.sitefilm.userservice.service.factory.GetVerificationEmailCodeFactory;
import org.sitefilm.userservice.service.kafka.EmailVerificationProducer;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.time.Instant;
import java.util.HashSet;
import java.util.Set;

@Service
@RequiredArgsConstructor
public class UserRegistrationService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final VerificationCodeRepository verificationCodeRepository;
    private final EmailVerificationProducer emailVerificationProducer;

    public String register(UserDto user) {
        userRepository.save(creatNewUser(user));
        return user.getEmail();
    }

    public void verify(String codeFromEmail, String userEmail) {
        if (verificationCodeRepository.compareUserCodeWithDB(codeFromEmail, userEmail, Instant.now())) {
            User user = userRepository.findByEmail(userEmail);
            user.setVerified(true);
            userRepository.save(user);
        } else {
            throw new RuntimeException("Invalid verification code");
        }
    }

    public void sendVerificationEmail(String email) throws JsonProcessingException {
        GetVerificationEmailCodeFactory code = new GetVerificationEmailCodeFactory(email);
        emailVerificationProducer.sendVerificationCode(code.get());
    }

    private Set<Role> createUserRole() {
        Role role = new Role();
        role.setId(2L);
        role.setName("USER");
        Set<Role> roles = new HashSet<>();
        roles.add(role);
        return roles;
    }

    private User creatNewUser(UserDto user) {
        String password = passwordEncoder.encode(user.getPassword());
        return User.builder()
                .email(user.getEmail())
                .password(password)
                .roles(createUserRole())
                .isEnabled(true)
                .isVerified(false)
                .build();
    }
}
