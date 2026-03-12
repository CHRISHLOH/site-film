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

    public DictionariesRepositoryAdapter(
            JdbcTemplate jdbcTemplate,
            JsonbMapper jsonbMapper
    ) {
        this.jdbcTemplate = jdbcTemplate;
        this.jsonbMapper = jsonbMapper;
    }

    @Override
    public List<Genre> saveGenres(List<Genre> genres) {
        genres.forEach(System.out::println);
        String sql = """
            INSERT INTO content_service.genres(external_id, translations)
            VALUES (?, ?)
            RETURNING id, external_id, translations
        """;
        return jdbcTemplate.query(
                sql,
                ps -> {
                    for (Genre genre : genres) {
                        ps.setLong(1, genre.getExternalId());
                        ps.setObject(
                                2,
                                jsonbMapper.toJson(genre.getTranslations()),
                                Types.OTHER
                        );
                        ps.addBatch();
                    }
                },
                (rs, rowNum) -> {
                    Genre genre = new Genre();
                    genre.setId(rs.getShort("id"));
                    genre.setExternalId(rs.getInt("external_id"));
                    genre.setTranslations(
                            jsonbMapper.readTranslations(rs.getString("translations"))
                    );
                    return genre;
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

        return jdbcTemplate.query(
                sql,
                ps -> {
                    for (Language l : languages) {
                        ps.setString(1, l.getIso_639_1());
                        ps.setObject(
                                2,
                                jsonbMapper.toJson(l.getTranslations()),
                                Types.OTHER
                        );
                        ps.addBatch();
                    }
                },
                (rs, rowNum) ->
                        Language.builder()
                                .id(rs.getShort("id"))
                                .iso_639_1(rs.getString("iso_639_1"))
                                .translations(
                                        jsonbMapper.readTranslations(
                                                rs.getString("translations")
                                        )
                                ).build()
        );
    }

    @Override
    public List<Career> saveCareers(List<Career> careers) {
        String sql = """
            INSERT INTO content_service.careers(type, translations)
            VALUES (?, ?)
            RETURNING id, type, translations
        """;

        return jdbcTemplate.query(
                sql,
                ps -> {
                    for (Career c : careers) {
                        ps.setInt(1, c.getType().getId());
                        ps.setObject(
                                2,
                                jsonbMapper.toJson(c.getTranslations()),
                                Types.OTHER
                        );
                        ps.addBatch();
                    }
                },
                (rs, rowNum) ->
                        Career.builder()
                                .id(rs.getShort("id"))
                                .type(CareerType.fromId(rs.getShort("type")))
                                .translations(
                                        jsonbMapper.readTranslations(
                                                rs.getString("translations")
                                        )
                                ).build()
        );
    }

    @Override
    public List<Country> saveCountries(List<Country> countries) {
        String sql = """
            INSERT INTO content_service.countries(iso_3166_1, translations)
            VALUES (?, ?)
            RETURNING id, iso_3166_1, translations
        """;

        return jdbcTemplate.query(
                sql,
                ps -> {
                    for (Country c : countries) {
                        ps.setString(1, c.getIso_3166_1());
                        ps.setObject(
                                2,
                                jsonbMapper.toJson(c.getTranslations()),
                                Types.OTHER
                        );
                        ps.addBatch();
                    }
                },
                (rs, rowNum) ->
                        Country.builder()
                                .id(rs.getShort("id"))
                                .iso_3166_1(rs.getString("iso_3166_1"))
                                .translations(
                                        jsonbMapper.readTranslations(
                                                rs.getString("translations")
                                        )
                                ).build()
        );
    }
}
