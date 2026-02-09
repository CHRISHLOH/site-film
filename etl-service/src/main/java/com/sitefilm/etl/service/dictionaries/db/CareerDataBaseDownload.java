package com.sitefilm.etl.service.dictionaries.db;

import com.sitefilm.etl.entity.directories.Career;
import com.sitefilm.etl.repository.dictioanries.CareerRepository;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CareerDataBaseDownload {

    private final JdbcTemplate jdbcTemplate;
    private final CareerRepository careerRepository;
    private final JsonbMapper jsonbMapper;

    public CareerDataBaseDownload(JdbcTemplate jdbcTemplate, CareerRepository careerRepository, JsonbMapper jsonbMapper) {
        this.jdbcTemplate = jdbcTemplate;
        this.careerRepository = careerRepository;
        this.jsonbMapper = jsonbMapper;
    }
    public void saveCareers(List<Career> careers) {
        jdbcTemplate.batchUpdate("INSERT INTO content_service.careers (type, translations) VALUES (?, ?)",
                careers,
                careers.size(),
                (ps, career) -> {
                    ps.setInt(1, career.getType().getId());
                    ps.setObject(2, jsonbMapper.toJsonb(career.getTranslations()));
                });
    }

    public List<Career> loadCareers() {
        return careerRepository.findAll();
    }
}
