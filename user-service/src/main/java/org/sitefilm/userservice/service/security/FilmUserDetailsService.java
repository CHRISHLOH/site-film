package org.sitefilm.userservice.service.security;

import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.entity.Authority;
import org.sitefilm.userservice.repository.UserRepository;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class FilmUserDetailsService implements UserDetailsService {

    private final UserRepository userRepository;

    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        return userRepository.findByEmail(email).map(
                userManagement -> User.builder()
                        .username(userManagement.getEmail())
                        .password(userManagement.getPassword())
                        .authorities(userManagement.getAuthorities().stream()
                                .map(Authority::getAuthority)
                                .map(SimpleGrantedAuthority::new )
                                .toList())
                        .build()
        ).orElseThrow(() -> new UsernameNotFoundException("User with email: %s not found".formatted(email)));
    }
}
