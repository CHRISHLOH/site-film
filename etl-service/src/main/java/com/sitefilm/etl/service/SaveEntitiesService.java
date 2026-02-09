package com.sitefilm.etl.service;

import com.sitefilm.etl.repository.dictioanries.CareerRepository;
import com.sitefilm.etl.repository.dictioanries.CountryRepository;
import com.sitefilm.etl.repository.dictioanries.GenreRepository;
import org.springframework.stereotype.Service;

@Service
public class SaveEntitiesService {
    private final CareerRepository careerRepository;
    private final CountryRepository countryRepository;
    private final GenreRepository genreRepository;

    public SaveEntitiesService(CareerRepository careerRepository, CountryRepository countryRepository, GenreRepository genreRepository) {
        this.careerRepository = careerRepository;
        this.countryRepository = countryRepository;
        this.genreRepository = genreRepository;
    }



}
