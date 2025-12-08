package com.sitefilm.etl.configuration;

import lombok.*;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Data
@Configuration
@ConfigurationProperties(prefix = "tmdb.url")
public class TmdbUrlProperties {

    private String baseUrl;
    private String countries;
    private String genreMovies;
    private String genreSeries;
    private String languages;
}
