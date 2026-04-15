package com.sitefilm.etl.infrastructure.persistense.tmdb;

import com.sitefilm.etl.domain.model.person.DataPersonTranslation;
import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.domain.port.repository.PersonRepositoryPort;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.util.*;

@Repository
public class PersonRepositoryAdapter implements PersonRepositoryPort {
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;
    private final JdbcTemplate jdbcTemplate;
    private final BatchInsertHelper batchInsertHelper;

    public PersonRepositoryAdapter(
            NamedParameterJdbcTemplate namedParameterJdbcTemplate,
            JdbcTemplate jdbcTemplate,
            BatchInsertHelper batchInsertHelper
    ) {
        this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
        this.jdbcTemplate = jdbcTemplate;
        this.batchInsertHelper = batchInsertHelper;
    }

    @Override
    public Set<Long> existPersons(List<Long> ids) {
        if (ids == null || ids.isEmpty()) {
            return Collections.emptySet();
        }
        List<Long> result = namedParameterJdbcTemplate.query(
                """
                SELECT external_id
                FROM content_service.persons
                WHERE external_id IN (:externalIds)
                """,
                new MapSqlParameterSource("externalIds", ids),
                (rs, rowNum) -> rs.getLong("external_id")
        );
        return new HashSet<>(result);
    }

    @Override
    public Set<Person> save(List<Person> persons) {
        List<Person> personsWithId = savePerson(persons);

        personsWithId.forEach(p -> {
            if (p.getPersonTranslation() != null) {
                saveTranslation(p.getPersonTranslation(), p.getId());
            }
        });
        return new HashSet<>(personsWithId);
    }

    private List<Person> savePerson(List<Person> persons) {
        String sql = """
                INSERT INTO content_service.persons(
                    original_name, birth_date, death_date, gender,
                    birth_place, known_as, photo_url, external_id, source
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
                ON CONFLICT (external_id, source) DO UPDATE
                    SET external_id = EXCLUDED.external_id
                RETURNING id, external_id
                """;

        return batchInsertHelper.batchInsertWithReturning(
                jdbcTemplate,
                sql,
                persons,
                (ps, person) -> {
                    ps.setString(1, person.getName());
                    ps.setObject(2, person.getBirthDate() != null
                            ? Date.valueOf(person.getBirthDate()) : null);
                    ps.setObject(3, person.getDeathDate() != null
                            ? Date.valueOf(person.getDeathDate()) : null);
                    ps.setInt(4, person.getGender().getGenderId());
                    ps.setString(5, person.getBirthPlace());
                    ps.setInt(6, person.getKnownAs() != null
                            ? person.getKnownAs().getId() : 1);
                    ps.setString(7, person.getPhotoUrl());
                    ps.setLong(8, person.getExternalId());
                    ps.setInt(9, person.getSource().getId());
                },
                (rs, rowNum) -> {
                    Long externalId = rs.getLong("external_id");
                    Person original = persons.stream()
                            .filter(p -> Objects.equals(p.getExternalId(), externalId))
                            .findFirst()
                            .orElseThrow(() -> new IllegalStateException(
                                    "No person found for externalId: " + externalId));
                    return Person.builder()
                            .id(rs.getLong("id"))
                            .externalId(externalId)
                            .personTranslation(original.getPersonTranslation())
                            .build();
                }
        );
    }

    private void saveTranslation(List<DataPersonTranslation> translations, Long personId) {
        jdbcTemplate.batchUpdate(
                """
                INSERT INTO content_service.person_translations(person_id, locale, locale_name, biography)
                VALUES (?, ?, ?, ?)
                ON CONFLICT DO NOTHING
                """,
                translations,
                translations.size(),
                (ps, t) -> {
                    ps.setLong(1, personId);
                    ps.setString(2, t.getLocale());
                    ps.setString(3, t.getLocaleName());
                    ps.setString(4, t.getBiography());
                }
        );
    }
}

