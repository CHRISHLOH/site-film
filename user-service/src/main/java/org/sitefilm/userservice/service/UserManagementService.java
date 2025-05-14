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
        System.out.println("[УПРАВЛЕНИЕ-ПОЛЬЗОВАТЕЛЯМИ] ========================================");
        System.out.println("[УПРАВЛЕНИЕ-ПОЛЬЗОВАТЕЛЯМИ] Запрос на загрузку пользователя по email: " + email);

        User user = userRepository.findUserWithRolesByEmail(email);

        if (user == null) {
            System.out.println("[УПРАВЛЕНИЕ-ПОЛЬЗОВАТЕЛЯМИ] ОШИБКА: Пользователь не найден с email: " + email);
            System.out.println("[УПРАВЛЕНИЕ-ПОЛЬЗОВАТЕЛЯМИ] ========================================");
            throw new EntityNotFoundException("Пользователь не найден с email: " + email);
        }

        System.out.println("[УПРАВЛЕНИЕ-ПОЛЬЗОВАТЕЛЯМИ] Пользователь найден, ID: " + user.getId());
        System.out.println("[УПРАВЛЕНИЕ-ПОЛЬЗОВАТЕЛЯМИ] Имя пользователя: " + user.getUsername());

        if (user.getRoles() != null && !user.getRoles().isEmpty()) {
            StringBuilder rolesStr = new StringBuilder();
            user.getRoles().forEach(role -> {
                rolesStr.append(role.getName()).append(", ");
            });
            System.out.println("[УПРАВЛЕНИЕ-ПОЛЬЗОВАТЕЛЯМИ] Роли пользователя: " +
                    rolesStr.substring(0, rolesStr.length() - 2));
        } else {
            System.out.println("[УПРАВЛЕНИЕ-ПОЛЬЗОВАТЕЛЯМИ] У пользователя нет ролей");
        }

        System.out.println("[УПРАВЛЕНИЕ-ПОЛЬЗОВАТЕЛЯМИ] Статус аккаунта: " +
                (user.isAccountNonLocked() ? "активен" : "заблокирован"));
        System.out.println("[УПРАВЛЕНИЕ-ПОЛЬЗОВАТЕЛЯМИ] Аккаунт не истек: " + user.isAccountNonExpired());
        System.out.println("[УПРАВЛЕНИЕ-ПОЛЬЗОВАТЕЛЯМИ] Учетные данные не истекли: " + user.isCredentialsNonExpired());
        System.out.println("[УПРАВЛЕНИЕ-ПОЛЬЗОВАТЕЛЯМИ] ========================================");

        return user;
    }
}
