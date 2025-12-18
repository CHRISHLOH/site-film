package com.sitefilm.etl.configuration;

import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpHeaders;
import org.springframework.web.client.RestClient;

@Configuration
@RequiredArgsConstructor
public class TmdbRestClientConfiguration {

    private final TmdbAuthProperties tmdbAuthProperties;
    private final TmdbUrlProperties tmdbUrlProperties;

    @Bean
    public TmdbClient restClient(TmdbUrlProperties urlProperties) {
        return new TmdbClient(RestClient.builder()
                .baseUrl(tmdbUrlProperties.getBaseUrl())
                .defaultHeader(
                        HttpHeaders.AUTHORIZATION,
                        "Bearer " + tmdbAuthProperties.getBearer()
                )
                .build(),
                urlProperties);
    }
}
