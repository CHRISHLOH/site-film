package org.sitefilm.adminservice.configuration;

import org.sitefilm.adminservice.service.AdminMovieRestClient;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestClient;

@Configuration
public class AdminServiceConfiguration {

    @Bean
    public AdminMovieRestClient MovieRestClient() {
        return new AdminMovieRestClient(RestClient.builder()
                .baseUrl("http://localhost:8080")
                .build());
    }

}
