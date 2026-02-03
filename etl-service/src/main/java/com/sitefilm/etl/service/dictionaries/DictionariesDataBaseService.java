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

import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

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
//        List<Career> careers =              careerRepository.saveAll(dictionariesDto.careers());
        System.out.println("=== BEFORE SAVE ===");
        System.out.println("Total countries: " + dictionariesDto.countries().size());

        Set<String> isoCodes = new HashSet<>();
        Set<Integer> identities = new HashSet<>();

        for (Country c : dictionariesDto.countries()) {
            System.out.println("Country: iso=" + c.getIsoCode() +
                    ", identity=" + System.identityHashCode(c));
            isoCodes.add(c.getIsoCode());
            identities.add(System.identityHashCode(c));
        }

        System.out.println("Unique ISO codes: " + isoCodes.size());
        System.out.println("Unique objects: " + identities.size());
        List<Career> careers = null;
        List<Country> countries = countryRepository.saveAll(dictionariesDto.countries());
        System.out.println("Отработало в первый раз");
        List<Genre> genres = genreRepository.saveAll(dictionariesDto.genres());
        System.out.println("Отработало во второй");

        return new DictionariesDto(countries, careers, genres);

    }
}
