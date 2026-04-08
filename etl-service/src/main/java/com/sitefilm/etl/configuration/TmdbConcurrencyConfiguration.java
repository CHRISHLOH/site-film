package com.sitefilm.etl.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Semaphore;

@Configuration
public class TmdbConcurrencyConfiguration {
    @Bean(destroyMethod = "shutdown")
    public ExecutorService personExecutorService() {
        return Executors.newVirtualThreadPerTaskExecutor();
    }
}
