package com.sitefilm.etl.configuration;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Data
@Configuration
@ConfigurationProperties(prefix = "tmdb.keys")
public class TmdbAuthProperties {
    private String bearer;
    private String apiKey;
}
