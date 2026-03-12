package com.sitefilm.etl.infrastructure.persistense.tmdb;

import com.sitefilm.etl.domain.model.ref.*;
import com.sitefilm.etl.domain.port.repository.TmdbRelationshipsRepositoryPort;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class RelationshipsRepositoryAdapter implements TmdbRelationshipsRepositoryPort {

    private final JdbcTemplate jdbcTemplate;

    public RelationshipsRepositoryAdapter(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    @Override
    @Transactional
    public void save(RelationshipsAggregatedData data) {
        saveGenres(data.contentGenre());
        saveCountries(data.contentCountry());
        saveLanguages(data.contentLanguage());
        saveContentPerson(data.contentPerson());
    }

    private void saveGenres(List<ContentGenre> contentGenres) {
        String sql = """
                INSERT INTO content_service.content_genres(content_id, genre_id, display_order)
                VALUES (?, ?, ?)
                """;
        jdbcTemplate.batchUpdate(
            sql,
                contentGenres,
                contentGenres.size(),
                (ps, cg) -> {
                    ps.setLong(1, cg.getContentId());
                    ps.setShort(2, cg.getGenreId());
                    ps.setShort(3, cg.getDisplayOrder());
                }
        );
    }

    private void saveCountries(List<ContentCountry>  contentCountries) {
        String sql = """
                INSERT INTO content_service.content_countries(content_id, country_id)
                VALUES (?, ?)
                """;
        jdbcTemplate.batchUpdate(
                sql,
                contentCountries,
                contentCountries.size(),
                (ps, cc) -> {
                    ps.setLong(1, cc.getContentId());
                    ps.setShort(2, cc.getCountryId());
                }
        );
    }

    private void saveLanguages(List<ContentLanguage> contentLanguages) {
        String sql = """
                INSERT INTO content_service.content_languages(content_id, language_id)
                VALUES (?, ?)
                """;
        jdbcTemplate.batchUpdate(
                sql,
                contentLanguages,
                contentLanguages.size(),
                (ps, cl) -> {
                    ps.setLong(1, cl.getContentId());
                    ps.setShort(2, cl.getLanguageId());
                }
        );
    }

    private void saveContentPerson(List<ContentPerson> contentPersons) {
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
                    ps.setShort(5, cp.displayOrder());
                }
        );
    }
}
