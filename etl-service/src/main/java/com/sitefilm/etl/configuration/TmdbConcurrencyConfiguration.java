package com.sitefilm.etl.configuration;

import jakarta.annotation.PreDestroy;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Configuration
public class TmdbConcurrencyConfiguration {
    @Bean(name = "pageExecutor", destroyMethod = "shutdown")
    public ExecutorService pageExecutorService() {
        return Executors.newFixedThreadPool(4);
    }

    @Bean(name = "movieExecutor", destroyMethod = "shutdown")
    public ExecutorService movieExecutorService() {
        return Executors.newFixedThreadPool(10);
    }

    @Bean(name = "personExecutor", destroyMethod = "shutdown")
    public ExecutorService personExecutorService() {
        return Executors.newFixedThreadPool(10);
    }

    @Bean(name = "castExecutor", destroyMethod = "shutdown")
    public ExecutorService castExecutorService() {
        return Executors.newFixedThreadPool(10);
    }

    @Bean(name = "dictionariesExecutor", destroyMethod = "shutdown")
    public ExecutorService dictionariesExecutorService() {
        return Executors.newFixedThreadPool(3);
    }
}
