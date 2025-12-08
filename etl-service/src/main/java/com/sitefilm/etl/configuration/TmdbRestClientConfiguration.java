package com.sitefilm.etl.configuration;

import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.client.RestClient;

@Configuration
@RequiredArgsConstructor
public class TmdbRestClientConfiguration {

    private final TmdbAuthProperties tmdbAuthProperties;

    @Bean
    public TmdbClient restClient(TmdbUrlProperties urlProperties) {
        return new TmdbClient(RestClient.builder()
                .baseUrl(tmdbAuthProperties.getBearer())
                .build(),
                urlProperties);
    }
}
