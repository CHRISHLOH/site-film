package com.sitefilm.etl.configuration;

import lombok.*;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Getter
@Setter
@Configuration
@ConfigurationProperties(prefix = "tmdb.url")
public class TmdbUrlProperties {
    private String baseUrl;
    private String jobs;
    private String countries;
    private String genreMovies;
    private String genreSeries;
    private String languages;
    private String moviePage;
    private String moviesDetails;
    private String movieTranslation;
    private String personsCast;
    private String personDetails;
    private String personTranslations;
}
