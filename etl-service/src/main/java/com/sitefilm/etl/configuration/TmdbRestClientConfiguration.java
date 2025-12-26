package com.sitefilm.etl.configuration;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.configuration.client.DictionariesTmdbClient;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpHeaders;
import org.springframework.web.client.RestClient;
import org.springframework.web.client.RestTemplate;

@Configuration
@RequiredArgsConstructor
public class TmdbRestClientConfiguration {

    private final TmdbAuthProperties tmdbAuthProperties;
    private final TmdbUrlProperties tmdbUrlProperties;

    @Bean
    public RestClient tmdbRestClient() {
        return RestClient.builder()
                .baseUrl(tmdbUrlProperties.getBaseUrl())
                .defaultHeader(
                        HttpHeaders.AUTHORIZATION,
                        "Bearer " + tmdbAuthProperties.getBearer()
                )
                .build();
    }

    @Bean
    public DictionariesTmdbClient dictionariesTmdbClient(RestClient tmdbRestClient) {
        return new DictionariesTmdbClient(tmdbRestClient, tmdbUrlProperties);
    }

    @Bean
    public CoreTmdbClient coreTmdbClient(RestClient tmdbRestClient) {
        return new CoreTmdbClient(tmdbRestClient, tmdbUrlProperties);
    }

}
