package org.sitefilm.userservice.service;

import jakarta.persistence.EntityNotFoundException;
import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.entity.User;
import org.sitefilm.userservice.repository.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserManagementService implements UserDetailsService {
    private final UserRepository userRepository;

    @Override

    public UserDetails loadUserByUsername(String email) throws EntityNotFoundException {
        User user = userRepository.findUserWithRolesByEmail(email);
        if (user == null) {
            throw new EntityNotFoundException("Пользователь не найден с email: " + email);
        }
        return user;
    }


}
