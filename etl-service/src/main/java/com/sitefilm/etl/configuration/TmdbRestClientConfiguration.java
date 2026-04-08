package com.sitefilm.etl.configuration;

import com.sitefilm.etl.infrastructure.provider.tmdb.client.CoreTmdbClient;
import com.sitefilm.etl.infrastructure.provider.tmdb.client.DictionariesTmdbClient;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Qualifier;
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
    @Qualifier("tmdb")
    public RestClient tmdbRestClient() {
        return RestClient.builder()
                .baseUrl(tmdbUrlProperties.getBaseUrl())
                .defaultHeader(
                        HttpHeaders.AUTHORIZATION,
                        "Bearer " + tmdbAuthProperties.getBearer()
                )
                .requestInterceptor((request, body, execution) -> {
                    System.out.println("➡️ " + request.getMethod() + " " + request.getURI());
                    return execution.execute(request, body);
                })
                .build();
    }

    @Bean
    public DictionariesTmdbClient dictionariesTmdbClient(@Qualifier("tmdb") RestClient tmdbRestClient) {
        return new DictionariesTmdbClient(tmdbRestClient, tmdbUrlProperties);
    }

    @Bean
    public CoreTmdbClient coreTmdbClient(@Qualifier("tmdb") RestClient tmdbRestClient) {
        return new CoreTmdbClient(tmdbRestClient, tmdbUrlProperties);
    }
}
