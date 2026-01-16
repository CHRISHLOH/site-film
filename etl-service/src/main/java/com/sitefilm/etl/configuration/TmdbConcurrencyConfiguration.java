package com.sitefilm.etl.configuration;

import jakarta.annotation.PreDestroy;
import org.apache.catalina.util.RateLimiter;
import org.springframework.context.annotation.Bean;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class TmdbConcurrencyConfiguration {

    @Bean
    public ExecutorService mainLoaderExecutorService() {
        return Executors.newFixedThreadPool(20);
    }

    @Bean
    public RateLimiter rateLimiter() {
        return Ra
    }

}
