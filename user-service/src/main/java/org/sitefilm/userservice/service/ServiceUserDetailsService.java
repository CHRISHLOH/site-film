package org.sitefilm.userservice.service;

import lombok.RequiredArgsConstructor;
import org.hibernate.Hibernate;
import org.sitefilm.userservice.entity.User;
import org.sitefilm.userservice.repository.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ServiceUserDetailsService implements UserDetailsService {

    UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userRepository.findByEmail(email);

        if (user == null) {
            throw new UsernameNotFoundException("User not found");
        }
        Hibernate.initialize(user.getRoles());

        return user;
    }
}
