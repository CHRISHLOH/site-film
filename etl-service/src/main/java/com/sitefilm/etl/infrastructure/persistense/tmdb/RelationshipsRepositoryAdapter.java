package com.sitefilm.etl.infrastructure.persistense.tmdb;

import com.sitefilm.etl.domain.model.ref.*;
import com.sitefilm.etl.domain.port.repository.TmdbRelationshipsRepositoryPort;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.Types;
import java.util.List;

@Repository
public class RelationshipsRepositoryAdapter implements TmdbRelationshipsRepositoryPort {

    private final JdbcTemplate jdbcTemplate;

    public RelationshipsRepositoryAdapter(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public void saveGenres(List<ContentGenre> contentGenres) {
        String sql = """
                INSERT INTO content_service.content_genres(content_id, genre_id, display_order)
                VALUES (?, ?, ?)
                """;
        jdbcTemplate.batchUpdate(
            sql,
                contentGenres,
                contentGenres.size(),
                (ps, cg) -> {
                    ps.setLong(1, cg.contentId());
                    ps.setShort(2, cg.genreId());
                    ps.setShort(3, cg.displayOrder());
                }
        );
    }

    @Override
    public void saveCountries(List<ContentCountry> contentCountries) {
        String sql = """
                INSERT INTO content_service.content_countries(content_id, country_id)
                VALUES (?, ?)
                """;
        jdbcTemplate.batchUpdate(
                sql,
                contentCountries,
                contentCountries.size(),
                (ps, cc) -> {
                    ps.setLong(1, cc.contentId());
                    ps.setShort(2, cc.countryId());
                }
        );
    }

    @Override
    public void saveLanguages(List<ContentLanguage> contentLanguages) {
        String sql = """
                INSERT INTO content_service.content_languages(content_id, language_id)
                VALUES (?, ?)
                """;
        jdbcTemplate.batchUpdate(
                sql,
                contentLanguages,
                contentLanguages.size(),
                (ps, cl) -> {
                    ps.setLong(1, cl.contentId());
                    ps.setShort(2, cl.languageId());
                }
        );
    }

    @Override
    public void saveContentPerson(List<ContentPerson> contentPersons) {
        String sql = """
                INSERT INTO content_service.content_persons(content_id, person_id, career_id, character_name, display_order_in_content)
                VALUES (?, ?, ?, ?, ?)
                """;
        jdbcTemplate.batchUpdate(
                sql,
                contentPersons,
                contentPersons.size(),
                (ps, cp) -> {
                    ps.setLong(1, cp.contentId());
                    ps.setLong(2, cp.personId());
                    ps.setShort(3, cp.jobId());
                    ps.setString(4, cp.characterName());
                    ps.setObject(5, cp.displayOrder(), Types.SMALLINT);
                }
        );
    }

    @Override
    public void saveOneGenre(ContentGenre cg) {
        String sql = """
                INSERT INTO content_service.content_genres(content_id, genre_id, display_order)
                VALUES (?, ?, ?)
                """;
        jdbcTemplate.update(
                sql,
                ps -> {
                    ps.setLong(1, cg.contentId());
                    ps.setShort(2, cg.genreId());
                    ps.setShort(3, cg.displayOrder());
                }
        );
    }

    @Override
    public void saveOneCountry(ContentCountry cc) {
        String sql = """
                INSERT INTO content_service.content_countries(content_id, country_id)
                VALUES (?, ?)
                """;
        jdbcTemplate.update(
                sql,
                ps -> {
                    ps.setLong(1, cc.contentId());
                    ps.setShort(2, cc.countryId());
                }
        );
    }

    @Override
    public void saveOneLanguage(ContentLanguage cl) {
        String sql = """
                INSERT INTO content_service.content_languages(content_id, language_id)
                VALUES (?, ?)
                """;
        jdbcTemplate.update(
                sql,
                ps -> {
                    ps.setLong(1, cl.contentId());
                    ps.setShort(2, cl.languageId());
                }
        );
    }

    @Override
    public void saveOneContentPerson(ContentPerson cp) {
        String sql = """
                INSERT INTO content_service.content_persons(content_id, person_id, career_id, character_name, display_order_in_content)
                VALUES (?, ?, ?, ?, ?)
                """;
        jdbcTemplate.update(
                sql,
                ps -> {
                    ps.setLong(1, cp.contentId());
                    ps.setLong(2, cp.personId());
                    ps.setShort(3, cp.jobId());
                    ps.setString(4, cp.characterName());
                    ps.setObject(5, cp.displayOrder(), Types.SMALLINT);
                }
        );
    }
}
