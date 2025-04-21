package org.sitefilm.userservice.configuration.security;

import lombok.RequiredArgsConstructor;
import org.sitefilm.userservice.configuration.security.interceptor.JwtHeaderInterceptor;
import org.sitefilm.userservice.service.UserRestClient;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestClient;

@Configuration
public class UserRestClientConfiguration {

    @Bean
    public UserRestClient userRestClient(
            JwtHeaderInterceptor jwtHeaderInterceptor
    ) {
        return new UserRestClient(RestClient.builder()
                .baseUrl("http://localhost:8080")
                .requestInterceptor(jwtHeaderInterceptor)
                .build());
    }
}
