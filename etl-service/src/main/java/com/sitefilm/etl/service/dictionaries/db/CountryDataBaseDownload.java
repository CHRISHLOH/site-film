package com.sitefilm.etl.service.dictionaries.db;

import com.fasterxml.jackson.core.type.TypeReference;
import com.sitefilm.etl.entity.directories.Country;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CountryDataBaseDownload {

    private final JdbcTemplate jdbcTemplate;
    private final JsonbMapper jsonbMapper;

    public CountryDataBaseDownload(JdbcTemplate jdbcTemplate, JsonbMapper jsonbMapper) {
        this.jdbcTemplate = jdbcTemplate;
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
        return jdbcTemplate.query("""
                        SELECT id, iso_code, translations
                        FROM content_service.countries
                        """,
                (rs, numRow) -> {
                    Country country = new Country();
                    country.setId(rs.getShort("id"));
                    country.setIsoCode(rs.getString("iso_code"));
                    country.setTranslations(jsonbMapper.fromJsonb(rs.getString("translations"), new TypeReference<>() {
                    }));
                    return country;
                }
        );
    }
}
