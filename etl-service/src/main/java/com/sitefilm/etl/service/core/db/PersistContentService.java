package com.sitefilm.etl.service.core.db;

import com.sitefilm.etl.dto.DataContentTranslation;
import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.content.relationship.ContentTranslation;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;

@Service
public class PersistContentService {
    private final JdbcTemplate jdbcTemplate;

    public PersistContentService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void saveContent(List<Content> content) {
        jdbcTemplate.batchUpdate("INSERT INTO content_service." +
                        "content(original_title, content_type, poster_url, release_date, status, age_rating, budget, box_office, external_id, duration, source) " +
                        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
                content,
                content.size(),
                (ps, c) -> {
                    ps.setString(1, c.getOriginalTitle());
                    ps.setInt(2, c.getContentType().getContentTypeId());
                    ps.setString(3, c.getPosterUrl());
                    ps.setDate(4, Date.valueOf(c.getReleaseDate()));
                    ps.setInt(5, c.getStatus().getId());
                    ps.setInt(6, 1);
                    ps.setLong(7, c.getBudget());
                    ps.setLong(8, c.getBoxOffice());
                    ps.setInt(9, c.getExternalId());
                    ps.setInt(10, c.getDuration());
                    ps.setInt(11, c.getSource().getId());
                }
        );
    }

    public void saveTranslation(List<DataContentTranslation> translations) {
        jdbcTemplate.batchUpdate("""
        INSERT INTO content_service.content_translations (
            content_id,
            locale,
            title,
            description,
            plot_summary
        )
        SELECT
            c.id,
            ?, ?, ?, ?
        FROM content_service.content c
        WHERE c.external_id = ?
        AND c.source = 'TMDB'
        """,
                translations,
                translations.size(),
                (ps, t) -> {
                    ps.setString(1, t.locale());
                    ps.setString(2, t.title());
                    ps.setString(3, t.description());
                    ps.setString(4, t.plotSummary());
                    ps.setInt(5, t.externalContentId());
                }
        );

    }
}
