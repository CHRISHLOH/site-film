package com.sitefilm.etl.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@Configuration
public class TmdbConcurrencyConfiguration {
    @Bean(name = "personExecutor", destroyMethod = "shutdown")
    public ExecutorService personExecutorService() {
        return Executors.newVirtualThreadPerTaskExecutor();
    }
}
