package com.sitefilm.etl.infrastructure.persistense.tmdb;

import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.domain.model.content.DataContentTranslation;
import com.sitefilm.etl.domain.model.content.Details;
import com.sitefilm.etl.domain.model.content.MovieDetails;
import com.sitefilm.etl.domain.port.repository.ContentRepositoryPort;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class MovieRepositoryAdapter implements ContentRepositoryPort {

    private final JdbcTemplate jdbcTemplate;

    public MovieRepositoryAdapter(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public Long saveContent(Content content) {
        String sql = """
                INSERT INTO content_service.content(original_title, content_type, status, external_id, source)
                VALUES (?, ?, ?, ?, ?)
                RETURNING id,  original_title, content_type, poster_url, status, age_rating, external_id, source
                """;

        return jdbcTemplate.queryForObject(
                sql,
                (rs, rowNum) ->
                        rs.getLong("id"),
                content.getOriginalTitle(),
                content.getContentType().getContentTypeId(),
                content.getStatus().getId(),
                content.getExternalId(),
                content.getSource().getId()
        );
    }


    public void saveDetails(MovieDetails details, Long contentId) {
        String sql = """
                INSERT INTO content_service.movie_details(content_id, budget, box_office, duration, release_date)
                VALUES (?, ?, ?, ?, ?)
                """;
        jdbcTemplate.update(
                sql,
                contentId,
                details.getBudget(),
                details.getBoxOffice(),
                details.getDuration(),
                details.getReleaseDate()
        );
    }

    public void saveTranslations(List<DataContentTranslation> translations, Long contentId) {
        String sql = """
        INSERT INTO content_service.content_translations
        (content_id, locale, title, description, plot_summary)
        VALUES (?, ?, ?, ?, ?)
        """;
        jdbcTemplate.batchUpdate(
                sql,
                translations,
                translations.size(),
                (ps, translation) -> {
                    ps.setLong(1, contentId);
                    ps.setString(2, translation.locale());
                    ps.setString(3, translation.title());
                    ps.setString(4, translation.description());
                    ps.setString(5, translation.plotSummary());
                }
        );
    }

    public void saveOneTranslation(DataContentTranslation translation, Long contentId) {
        String sql = """
        INSERT INTO content_service.content_translations
        (content_id, locale, title, description, plot_summary)
        VALUES (?, ?, ?, ?, ?)
        """;
        jdbcTemplate.update(
                sql,
                ps -> {
                    ps.setLong(1, contentId);
                    ps.setString(2, translation.locale());
                    ps.setString(3, translation.title());
                    ps.setString(4, translation.description());
                    ps.setString(5, translation.plotSummary());
                }
        );
    }
}
