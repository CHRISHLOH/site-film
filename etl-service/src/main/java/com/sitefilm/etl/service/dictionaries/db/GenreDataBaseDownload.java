package com.sitefilm.etl.service.dictionaries.db;

import com.sitefilm.etl.entity.directories.Genre;
import com.sitefilm.etl.repository.dictioanries.GenreRepository;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GenreDataBaseDownload {
    private final JdbcTemplate jdbcTemplate;
    private final GenreRepository genreRepository;
    private final JsonbMapper jsonbMapper;

    public GenreDataBaseDownload(JdbcTemplate jdbcTemplate, GenreRepository genreRepository, JsonbMapper jsonbMapper) {
        this.jdbcTemplate = jdbcTemplate;
        this.genreRepository = genreRepository;
        this.jsonbMapper = jsonbMapper;
    }

    public void saveGenre(List<Genre> genres) {
        jdbcTemplate.batchUpdate("INSERT INTO content_service.genres (external_id, translations) VALUES (?, ?)",
                genres,
                genres.size(),
                (ps, genre) -> {
                    ps.setInt(1, genre.getExternalId());
                    ps.setObject(2, jsonbMapper.toJsonb(genre.getTranslations()));
                }
        );
    }
    public List<Genre> loadGenres() {
        return genreRepository.findAll();
    }
}
