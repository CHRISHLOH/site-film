package com.sitefilm.etl.service.dictionaries.db;

import com.sitefilm.etl.entity.directories.Country;
import com.sitefilm.etl.repository.dictioanries.CountryRepository;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountryDataBaseDownload {

    private final JdbcTemplate jdbcTemplate;
    private final CountryRepository countryRepository;
    private final JsonbMapper jsonbMapper;

    public CountryDataBaseDownload(JdbcTemplate jdbcTemplate, CountryRepository countryRepository, JsonbMapper jsonbMapper) {
        this.jdbcTemplate = jdbcTemplate;
        this.countryRepository = countryRepository;
        this.jsonbMapper = jsonbMapper;
    }

    public void saveCountry(List<Country> countries) {
        jdbcTemplate.batchUpdate("INSERT INTO content_service.countries(iso_code, translations) VALUES (?, ?)",
                countries,
                countries.size(),
        (ps, country) -> {
            ps.setString(1, country.getIsoCode());
            ps.setObject(2, jsonbMapper.toJsonb(country.getTranslations()));
        });
    }

    public List<Country> loadCountry() {
        return countryRepository.findAll();
    }
}
