package com.sitefilm.etl.configuration;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@Getter
@Setter
@Configuration
@ConfigurationProperties(prefix = "translation.libre")
public class TranslationUrlProperties {
    private String url;
    private String translation;
}
