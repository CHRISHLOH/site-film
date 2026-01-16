package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import org.springframework.stereotype.Service;

@Service
public class PopularMoviesLoadUseCase {
    private final CoreTmdbClient tmdbClient;

    public PopularMoviesLoadUseCase(CoreTmdbClient tmdbClient) {
        this.tmdbClient = tmdbClient;
    }

    public void load (){
        int countPage = tmdbClient.loadCountPage().total_pages();
        for(int i = 0; i < countPage; i++){
            // Асинхронный вызов загрузки страниц

        }

    }
}
