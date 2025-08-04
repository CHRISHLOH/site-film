package org.sitefilm.aiservice.ai_service.configuration;

import org.sitefilm.aiservice.ai_service.service.ContentServiceRestClient;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestClient;


@Configuration
public class RestClientConfiguration {

    @Bean
    public ContentServiceRestClient userRestClient() {
        return new ContentServiceRestClient(RestClient.builder()
                .baseUrl("http://localhost:8080")
                .build());
    }
}
