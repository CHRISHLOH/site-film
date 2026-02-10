package com.sitefilm.etl.service.core.db;

import com.sitefilm.etl.dto.DataPersonTranslation;
import com.sitefilm.etl.entity.person.Person;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;

@Service
public class PersistPersonService {
    private final JdbcTemplate jdbcTemplate;

    public PersistPersonService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void savePerson(List<Person> persons) {
        jdbcTemplate.batchUpdate("INSERT INTO content_service.persons(original_name, birth_date, death_date, gender, birth_place, career_id, photo_url, external_id, source) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)",
                persons,
                persons.size(),
                (ps, person) -> {
                ps.setString(1, person.getName());
                ps.setDate(2, Date.valueOf(person.getBirthDate()));
                ps.setDate(3, Date.valueOf(person.getDeathDate()));
                ps.setInt(4, person.getGender().getGenderId());
                ps.setString(5, person.getBirthPlace());
                ps.setLong(6, person.getCareerId());
                ps.setString(7, person.getPhotoUrl());
                ps.setLong(8, person.getExternalId());
                ps.setInt(9, person.getSource().getId());
        });
    }

    public void saveTranslation(List<DataPersonTranslation> translations) {
        jdbcTemplate.batchUpdate("""
                            INSERT INTO content_service.person_translations(person_id, locale, locale_name, biography)
                            SELECT p.id
                            ?, ?, ?
                            FROM content_service.persons AS p
                            WHERE p.external_id = ?
                            AND p.source = 'TMDB'
                """,
                translations,
                translations.size(),
                (ps, t) -> {
                    ps.setString(1, t.locale());
                    ps.setString(2, t.localeName());
                    ps.setString(3, t.biography());
                    ps.setInt(4, t.externalPersonId());
                }
        );
    }
}
