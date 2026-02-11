package com.sitefilm.etl.service.dictionaries.db;

import com.fasterxml.jackson.core.type.TypeReference;
import com.sitefilm.etl.entity.directories.Career;
import com.sitefilm.etl.entity.enums.CareerType;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CareerDataBaseDownload {

    private final JdbcTemplate jdbcTemplate;
    private final JsonbMapper jsonbMapper;

    public CareerDataBaseDownload(JdbcTemplate jdbcTemplate, JsonbMapper jsonbMapper) {
        this.jdbcTemplate = jdbcTemplate;
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
        return jdbcTemplate.query(
                """
                SELECT id, type, translations
                FROM content_service.careers
                """,
                (rs, rowNum) -> {
                    Career career = new Career();
                    career.setId(rs.getLong("id"));
                    career.setType(CareerType.fromId(rs.getInt("type")));
                    career.setTranslations(
                            jsonbMapper.fromJsonb(
                                    rs.getString("translations"),
                                    new TypeReference<>() {
                                    }
                            )
                    );
                    return career;
                }
        );
    }
}
