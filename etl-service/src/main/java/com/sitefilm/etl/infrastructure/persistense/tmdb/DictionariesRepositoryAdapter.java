package com.sitefilm.etl.infrastructure.persistense.tmdb;

import com.sitefilm.etl.configuration.convert.JsonbMapper;
import com.sitefilm.etl.domain.model.Career;
import com.sitefilm.etl.domain.model.Country;
import com.sitefilm.etl.domain.model.Genre;
import com.sitefilm.etl.domain.model.Language;
import com.sitefilm.etl.domain.port.repository.DictionariesRepositoryPort;
import com.sitefilm.etl.domain.model.enums.CareerType;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.Types;
import java.util.List;

@Repository
public class DictionariesRepositoryAdapter implements DictionariesRepositoryPort {
    private final JdbcTemplate jdbcTemplate;
    private final JsonbMapper jsonbMapper;
    private final BatchInsertHelper  batchInsertHelper;

    public DictionariesRepositoryAdapter(JdbcTemplate jdbcTemplate, JsonbMapper jsonbMapper, BatchInsertHelper batchInsertHelper) {
        this.jdbcTemplate = jdbcTemplate;
        this.jsonbMapper = jsonbMapper;
        this.batchInsertHelper = batchInsertHelper;
    }

    @Override
    public List<Genre> saveGenres(List<Genre> genres) {
        String sql = """
            INSERT INTO content_service.genres(external_id, translations)
            VALUES (?, ?)
            RETURNING id, external_id, translations
        """;
        return batchInsertHelper.batchInsertWithReturning(
                jdbcTemplate,
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
        return batchInsertHelper.batchInsertWithReturning(
                jdbcTemplate,
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
        return batchInsertHelper.batchInsertWithReturning(
                jdbcTemplate,
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
        return batchInsertHelper.batchInsertWithReturning(
                jdbcTemplate,
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
}

