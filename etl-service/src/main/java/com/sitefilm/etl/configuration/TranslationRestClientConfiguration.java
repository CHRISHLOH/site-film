package com.sitefilm.etl.configuration;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestClient;

@Configuration
public class TranslationRestClientConfiguration {
    private final TranslationUrlProperties urlProperties;

    public TranslationRestClientConfiguration(TranslationUrlProperties urlProperties) {
        this.urlProperties = urlProperties;
    }

    @Bean
    @Qualifier("machine")
    public RestClient machineRestClient() {
        return  RestClient.builder()
                .baseUrl(urlProperties.getUrl())
                .build();
    }
}
