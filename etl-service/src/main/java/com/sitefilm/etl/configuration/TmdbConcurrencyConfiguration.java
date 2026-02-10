package com.sitefilm.etl.configuration;

import jakarta.annotation.PreDestroy;
import org.apache.catalina.util.RateLimiter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Configuration
public class TmdbConcurrencyConfiguration {
    @Bean(name = "pageExecutor")
    public ExecutorService pageExecutorService() {
        return Executors.newFixedThreadPool(4);
    }

    @Bean(name = "movieExecutor")
    public ExecutorService movieExecutorService() {
        return Executors.newFixedThreadPool(10);
    }

    @Bean(name = "personExecutor")
    public ExecutorService personExecutorService() {
        return Executors.newFixedThreadPool(10);
    }

    @Bean(name = "dictionariesExecutor")
    public ExecutorService dictionariesExecutorService() {
        return Executors.newFixedThreadPool(3);
    }
}
