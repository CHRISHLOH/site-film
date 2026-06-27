package com.sitefilm.etl.infrastructure.persistense.tmdb;

import com.sitefilm.etl.domain.model.content.MovieDetails;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MovieRepositoryAdapter implements DetailsRepositoryPort<MovieDetails> {

    private final JdbcTemplate jdbcTemplate;

    public MovieRepositoryAdapter(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void saveDetails(MovieDetails details, Long contentId) {
        String sql = """
                INSERT INTO content_service.movie_details(content_id, budget, box_office, duration, release_date)
                VALUES (?, ?, ?, ?, ?)
                """;
        jdbcTemplate.update(
                sql,
                contentId,
                details.budget(),
                details.boxOffice(),
                details.duration(),
                details.releaseDate()
        );
    }
}
