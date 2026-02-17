package com.sitefilm.etl.service.dictionaries;

import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.entity.directories.Career;
import com.sitefilm.etl.entity.directories.Country;
import com.sitefilm.etl.entity.directories.Genre;
import com.sitefilm.etl.service.dictionaries.db.CareerDataBaseDownload;
import com.sitefilm.etl.service.dictionaries.db.CountryDataBaseDownload;
import com.sitefilm.etl.service.dictionaries.db.GenreDataBaseDownload;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class DictionariesDataBaseService {
    private final CareerDataBaseDownload careerDataBaseDownload;
    private final CountryDataBaseDownload countryDataBaseDownload;
    private final GenreDataBaseDownload genreDataBaseDownload;

    public DictionariesDataBaseService(CareerDataBaseDownload careerDataBaseDownload, CountryDataBaseDownload countryDataBaseDownload, GenreDataBaseDownload genreDataBaseDownload) {
        this.careerDataBaseDownload = careerDataBaseDownload;
        this.countryDataBaseDownload = countryDataBaseDownload;
        this.genreDataBaseDownload = genreDataBaseDownload;
    }

    @Transactional
    public DictionariesDto saveDictionaries(DictionariesDto dictionariesDto) {
//        careerDataBaseDownload.saveCareers(dictionariesDto.careers());
//        countryDataBaseDownload.saveCountry(dictionariesDto.countries());
//        genreDataBaseDownload.saveGenre(dictionariesDto.genres());
        List<Career> careers = careerDataBaseDownload.loadCareers();
        List<Country> countries = countryDataBaseDownload.loadCountry();
        List<Genre> genres = genreDataBaseDownload.loadGenres();
        return new DictionariesDto(countries, careers, genres);
    }
}
