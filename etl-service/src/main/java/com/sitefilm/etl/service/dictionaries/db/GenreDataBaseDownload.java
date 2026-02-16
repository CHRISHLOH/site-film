package com.sitefilm.etl.service.dictionaries.db;

import com.fasterxml.jackson.core.type.TypeReference;
import com.sitefilm.etl.entity.directories.Genre;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class GenreDataBaseDownload {
    private final JdbcTemplate jdbcTemplate;
    private final JsonbMapper jsonbMapper;

    public GenreDataBaseDownload(JdbcTemplate jdbcTemplate, JsonbMapper jsonbMapper) {
        this.jdbcTemplate = jdbcTemplate;
        this.jsonbMapper = jsonbMapper;
    }

    public void saveGenre(List<Genre> genres) {
        jdbcTemplate.batchUpdate("INSERT INTO content_service.genres (external_id, translations) VALUES (?, ?)",
                genres,
                genres.size(),
                (ps, genre) -> {
                    ps.setLong(1, genre.getExternalId());
                    ps.setObject(2, jsonbMapper.toJsonb(genre.getTranslations()));
                }
        );
    }

    public List<Genre> loadGenres() {
        return jdbcTemplate.query(
                """
                        SELECT id, external_id, translations
                        FROM content_service.genres
                        """,
                (rs, numRow) -> {
                    Genre genre = new Genre();
                    genre.setId(rs.getShort("id"));
                    genre.setExternalId(rs.getLong("external_id"));
                    genre.setTranslations(Collections.unmodifiableMap(jsonbMapper.fromJsonb(rs.getString("translations"), new TypeReference<>() {
                    })));
                    return genre;
                }
        );
    }
}
