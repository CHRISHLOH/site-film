package com.sitefilm.etl.infrastructure.persistense.tmdb;

import com.sitefilm.etl.configuration.convert.JsonbMapper;
import com.sitefilm.etl.domain.model.dictionaries.Career;
import com.sitefilm.etl.domain.model.dictionaries.Country;
import com.sitefilm.etl.domain.model.dictionaries.Genre;
import com.sitefilm.etl.domain.model.dictionaries.Language;
import com.sitefilm.etl.domain.port.repository.DictionariesRepositoryPort;
import com.sitefilm.etl.domain.model.person.CareerType;
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

    public List<Genre> getGenres() {
        String sql = """
            SELECT * FROM content_service.genres
        """;
        return jdbcTemplate.query(
                sql,
                (rs, rowNum) -> Genre.builder()
                        .id(rs.getShort("id"))
                        .externalId(rs.getInt("external_id"))
                        .translations(jsonbMapper.readTranslations(rs.getString("translations")))
                        .build()
        );
    }

    public List<Language> getLanguages() {
        String sql = """
            SELECT * FROM content_service.languages
        """;
        return jdbcTemplate.query(
                sql,
                (rs, rowNum) -> Language.builder()
                        .id(rs.getShort("id"))
                        .iso_639_1(rs.getString("iso_639_1"))
                        .translations(jsonbMapper.readTranslations(rs.getString("translations")))
                        .build()
        );
    }

    public List<Career> getCareers() {
        String sql = """
            SELECT * FROM content_service.careers
        """;
        return jdbcTemplate.query(
                sql,
                (rs,rowNum) -> Career.builder()
                        .id(rs.getShort("id"))
                        .type(CareerType.fromId(rs.getShort("type")))
                        .translations(jsonbMapper.readTranslations(rs.getString("translations")))
                        .build()
        );
    }

    public List<Country> getCountries() {
        String sql = """
            SELECT * FROM content_service.countries
        """;
        return jdbcTemplate.query(
                sql,
                (rs, rowNum) -> Country.builder()
                        .id(rs.getShort("id"))
                        .iso_3166_1(rs.getString("iso_3166_1"))
                        .translations(jsonbMapper.readTranslations(rs.getString("translations")))
                        .build()
        );
    }

    public Genre saveGenre(Genre genre) {
        String sql = """
        INSERT INTO content_service.genres(external_id, translations)
        VALUES (?, ?)
        RETURNING id, external_id, translations
    """;
        return jdbcTemplate.queryForObject(
                sql,
                (rs, rowNum) -> Genre.builder()
                        .id(rs.getShort("id"))
                        .externalId(rs.getInt("external_id"))
                        .translations(jsonbMapper.readTranslations(rs.getString("translations")))
                        .build(),
                genre.getExternalId(),
                genre.getTranslations()
        );
    }

    public Career saveCareer(Career career) {
        String sql = """
                    INSERT INTO content_service.careers(type, translations)
                    VALUES (?, ?::jsonb)
                    RETURNING id, type, translations
                """;
        return jdbcTemplate.queryForObject(
                sql,
                (rs, rowNum) -> Career.builder()
                        .id(rs.getShort("id"))
                        .type(CareerType.fromId(rs.getShort("type")))
                        .translations(jsonbMapper.readTranslations(rs.getString("translations")))
                        .build(),
                career.getType().getId(),
                jsonbMapper.toJson(career.getTranslations())
        );
    }

    public Country saveCountry(Country country) {
        String sql = """
                INSERT INTO content_service.countries(iso_3166_1, translations)
                Values (?, ?::jsonb)
                RETURNING id, iso_3166_1, translations
                """;
        return jdbcTemplate.queryForObject(
                sql,
                (rs, rowNum) -> Country.builder()
                        .id(rs.getShort("id"))
                        .iso_3166_1(rs.getString("iso_3166_1"))
                        .translations(jsonbMapper.readTranslations(rs.getString("translations")))
                        .build(),
                country.getIso_3166_1(),
                country.getTranslations()
        );
    }

    public Language saveLanguage(Language language) {
        String sql = """
                INSERT INTO content_service.languages(iso_639_1, translations)
                VALUES (?, ?::jsonb)
                RETURNING id, iso_639_1, translations
                """;
        return jdbcTemplate.queryForObject(
                sql,
                (rs, rowNum) -> Language.builder()
                        .id(rs.getShort("id"))
                        .iso_639_1(rs.getString("iso_639_1"))
                        .translations(jsonbMapper.readTranslations(rs.getString("translations")))
                        .build(),
                language.getIso_639_1(),
                language.getTranslations()
        );
    }
}

