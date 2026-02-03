package com.sitefilm.etl.service.dictionaries;

import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.dto.DictionariesIdDto;
import com.sitefilm.etl.entity.directories.Career;
import com.sitefilm.etl.entity.directories.Country;
import com.sitefilm.etl.entity.directories.Genre;
import com.sitefilm.etl.repository.dictioanries.CareerRepository;
import com.sitefilm.etl.repository.dictioanries.CountryRepository;
import com.sitefilm.etl.repository.dictioanries.GenreRepository;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

import static java.util.stream.Collectors.toMap;

@Service
public class DictionariesDataBaseService {
    private final CareerRepository careerRepository;
    private final CountryRepository countryRepository;
    private final GenreRepository genreRepository;

    public DictionariesDataBaseService(CareerRepository careerRepository, CountryRepository countryRepository, GenreRepository genreRepository) {
        this.careerRepository = careerRepository;
        this.countryRepository = countryRepository;
        this.genreRepository = genreRepository;
    }

    @Transactional
    public DictionariesDto saveDictionaries(DictionariesDto dictionariesDto) {
        System.out.println("Отработало");
        List<Career> careers = careerRepository.saveAll(dictionariesDto.careers());
        List<Country> countries = countryRepository.saveAll(dictionariesDto.countries());
        List<Genre> genres = genreRepository.saveAll(dictionariesDto.genres());
        System.out.println("Отработало");
       ;

        return new DictionariesDto(countries, careers, genres);

    }
}
