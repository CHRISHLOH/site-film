package com.sitefilm.etl.infrastructure.persistense.tmdb;

import com.sitefilm.etl.configuration.convert.JsonbMapper;
import com.sitefilm.etl.domain.model.Career;
import com.sitefilm.etl.domain.model.Country;
import com.sitefilm.etl.domain.model.Genre;
import com.sitefilm.etl.domain.model.Language;
import com.sitefilm.etl.domain.port.repository.DictionariesRepositoryPort;
import com.sitefilm.etl.domain.model.enums.CareerType;
import org.springframework.jdbc.core.ConnectionCallback;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Repository
public class DictionariesRepositoryAdapter implements DictionariesRepositoryPort {
    private final JdbcTemplate jdbcTemplate;
    private final JsonbMapper jsonbMapper;

    public DictionariesRepositoryAdapter(JdbcTemplate jdbcTemplate, JsonbMapper jsonbMapper) {
        this.jdbcTemplate = jdbcTemplate;
        this.jsonbMapper = jsonbMapper;
    }

    @Override
    public List<Genre> saveGenres(List<Genre> genres) {
        String sql = """
            INSERT INTO content_service.genres(external_id, translations)
            VALUES (?, ?)
            RETURNING id, external_id, translations
        """;
        return batchInsertWithReturning(
                sql,
                genres,
                (ps, genre) -> {
                    ps.setLong(1, genre.getExternalId());
                    ps.setObject(2, jsonbMapper.toJson(genre.getTranslations()), Types.OTHER);
                },
                (rs, rowNum)  -> {
                    Genre g = new Genre();
                    g.setId(rs.getShort("id"));
                    g.setExternalId(rs.getInt("external_id"));
                    g.setTranslations(jsonbMapper.readTranslations(rs.getString("translations")));
                    return g;
                }
        );
    }

    // --------------------------------------------------------------- languages

    @Override
    public List<Language> saveLanguages(List<Language> languages) {
        String sql = """
            INSERT INTO content_service.languages(iso_639_1, translations)
            VALUES (?, ?)
            RETURNING id, iso_639_1, translations
        """;
        return batchInsertWithReturning(
                sql,
                languages,
                (ps, l) -> {
                    ps.setString(1, l.getIso_639_1());
                    ps.setObject(2, jsonbMapper.toJson(l.getTranslations()), Types.OTHER);
                },
                (rs, rowNum)  -> Language.builder()
                        .id(rs.getShort("id"))
                        .iso_639_1(rs.getString("iso_639_1"))
                        .translations(jsonbMapper.readTranslations(rs.getString("translations")))
                        .build()
        );
    }

    // ----------------------------------------------------------------- careers

    @Override
    public List<Career> saveCareers(List<Career> careers) {
        String sql = """
            INSERT INTO content_service.careers(type, translations)
            VALUES (?, ?)
            RETURNING id, type, translations
        """;
        return batchInsertWithReturning(
                sql,
                careers,
                (ps, c) -> {
                    ps.setInt(1, c.getType().getId());
                    ps.setObject(2, jsonbMapper.toJson(c.getTranslations()), Types.OTHER);
                },
                (rs, rowNum)  -> Career.builder()
                        .id(rs.getShort("id"))
                        .type(CareerType.fromId(rs.getShort("type")))
                        .translations(jsonbMapper.readTranslations(rs.getString("translations")))
                        .build()
        );
    }

    // --------------------------------------------------------------- countries

    @Override
    public List<Country> saveCountries(List<Country> countries) {
        String sql = """
            INSERT INTO content_service.countries(iso_3166_1, translations)
            VALUES (?, ?)
            RETURNING id, iso_3166_1, translations
        """;
        return batchInsertWithReturning(
                sql,
                countries,
                (ps, c) -> {
                    ps.setString(1, c.getIso_3166_1());
                    ps.setObject(2, jsonbMapper.toJson(c.getTranslations()), Types.OTHER);
                },
                (rs, rowNum) -> Country.builder()
                        .id(rs.getShort("id"))
                        .iso_3166_1(rs.getString("iso_3166_1"))
                        .translations(jsonbMapper.readTranslations(rs.getString("translations")))
                        .build()
        );
    }

    private <T> List<T> batchInsertWithReturning(
            String sql,
            List<T> items,
            PreparedStatementBinder<T> binder,
            RowMapper<T> mapper
    ) {
        if (items == null || items.isEmpty()) {
            return Collections.emptyList();
        }

        return jdbcTemplate.execute((ConnectionCallback<List<T>>) conn -> {
            List<T> results = new ArrayList<>(items.size());
            try (PreparedStatement ps = conn.prepareStatement(sql)) {
                for (T item : items) {
                    binder.bind(ps, item);
                    try (ResultSet rs = ps.executeQuery()) {
                        while (rs.next()) {
                            results.add(mapper.mapRow(rs, results.size()));
                        }
                    }
                }
            }
            return results;
        });
    }

    @FunctionalInterface
    private interface PreparedStatementBinder<T> {
        void bind(PreparedStatement ps, T item) throws SQLException;
    }
}

