package com.sitefilm.etl.service.core.db;

import com.sitefilm.etl.service.core.dto.ContentCountryPersistDto;
import com.sitefilm.etl.service.core.dto.ContentGenrePersistDto;
import com.sitefilm.etl.service.core.dto.ContentPersonPersistDto;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PersistRelationshipsService {
    private final JdbcTemplate jdbcTemplate;
    public PersistRelationshipsService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void save(List<ContentCountryPersistDto> contentCountries,
                     List<ContentGenrePersistDto> contentGenres,
                     List<ContentPersonPersistDto> contentPerson){
        saveContentCountry(contentCountries);
        saveContentGenre(contentGenres);
        saveContentPerson(contentPerson);
    }

    private void saveContentCountry(List<ContentCountryPersistDto> contentCountries){
        jdbcTemplate.batchUpdate(
                """
                        INSERT INTO content_service.content_countries(content_id, country_id)
                        SELECT c.id, ?
                        FROM content_service.content c
                        WHERE c.external_id = ?
                        AND c.source = 'TMDB'
                        """,
                contentCountries,
                contentCountries.size(),
                (ps, cc) -> {
                    ps.setLong(1, cc.countryId());
                    ps.setInt(2, cc.externalContentId());
                }
        );
    }

    private void saveContentGenre(List<ContentGenrePersistDto> contentGenres){
        jdbcTemplate.batchUpdate(
                """
                        INSERT INTO content_service.content_genres(content_id, genre_id, display_order)
                        SELECT c.id, ?, ?
                        FROM content_service.content c
                        WHERE c.external_id = ?
                        AND c.source = 'TMDB'
                        """,
                contentGenres,
                contentGenres.size(),
                (ps, cg) -> {
                    ps.setLong(1, cg.genreId());
                    ps.setInt(2, cg.displayOrder());
                    ps.setInt(3, cg.externalContentId());
                }
        );
    }

    public void saveContentPerson(List<ContentPersonPersistDto> list) {

        jdbcTemplate.batchUpdate(
                """
                INSERT INTO content_service.content_persons (
                    content_id,
                    person_id,
                    career_id,
                    character_name,
                    display_order_in_content
                )
                SELECT
                    c.id,
                    p.id,
                    ?, ?, ?
                FROM content_service.content c
                JOIN content_service.persons p
                    ON p.external_id = ?
                   AND p.source = 'TMDB'
                WHERE c.external_id = ?
                  AND c.source = 'TMDB'
                """,
                list,
                list.size(),
                (ps, cp) -> {
                    ps.setLong(1, cp.careerId());
                    ps.setString(2, cp.characterName());
                    ps.setInt(3, cp.displayOrder());
                    ps.setLong(4, cp.externalPersonId());
                    ps.setLong(5, cp.externalContentId());
                }
        );
    }


}
