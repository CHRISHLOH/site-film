package org.sitefilm.userservice.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityBeans {

//    @Bean
//    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
//        return http
//                .csrf(AbstractHttpConfigurer::disable)
//                .authorizeHttpRequests(authorizationManagerRequestMatcherRegistry -> authorizationManagerRequestMatcherRegistry
//                        .requestMatchers(HttpMethod.POST, "/api/auth/**").permitAll()
//                        .requestMatchers(HttpMethod.GET, "/login/page").permitAll()
//                        .anyRequest().authenticated())
//                .oauth2Login(Customizer.withDefaults())
//                .oauth2Client(Customizer.withDefaults())
//                .build();
//    }
}
