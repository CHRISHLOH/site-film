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
    public DictionariesIdDto saveDictionaries(DictionariesDto dictionariesDto) {
        List<Career> careers =careerRepository.saveAll(dictionariesDto.careers());
        List<Country> countries = countryRepository.saveAll(dictionariesDto.countries());
        List<Genre> genres = genreRepository.saveAll(dictionariesDto.genres());
        Career career = new Career();

        Map<String, Long> countriesId = countries.stream().collect(toMap(Country::getIsoCode, Country::getId));
        Map<Integer, Long> genresId = genres.stream().collect(toMap(Genre::getExternalId, Genre::getId));
        Map<Map<String, String>, Long> jobsId = careers.stream().collect(toMap(Career::getTranslations, Career::getId));

        return new DictionariesIdDto(countriesId, genresId, jobsId);

    }
}
