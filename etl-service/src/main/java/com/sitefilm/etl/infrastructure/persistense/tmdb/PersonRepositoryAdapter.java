package com.sitefilm.etl.infrastructure.persistense.tmdb;

import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.domain.port.repository.PersonRepositoryPort;
import com.sitefilm.etl.infrastructure.persistense.tmdb.row.PersonIds;
import com.sitefilm.etl.infrastructure.persistense.tmdb.row.PersonTranslationRow;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.util.*;
import java.util.stream.Collectors;

@Repository
public class PersonRepositoryAdapter implements PersonRepositoryPort {
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;
    private final JdbcTemplate jdbcTemplate;

    public PersonRepositoryAdapter(
            NamedParameterJdbcTemplate namedParameterJdbcTemplate,
            JdbcTemplate jdbcTemplate
    ) {
        this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
        this.jdbcTemplate = jdbcTemplate;
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
        Map<Long, Person> personMap = persons.stream().collect(Collectors.toMap(Person::getExternalId, person -> person));
        List<Long> externalIds = persons.stream().map(Person::getExternalId).toList();
        savePerson(persons);
        List<PersonIds> personsWithId = getPersonsWithId(externalIds);
        personsWithId.forEach(p -> {
            Person person = personMap.get(p.external_id());
            if (person != null) {
                person.setId(p.id());
            }
        });
        List<PersonTranslationRow> allTranslations = persons.stream()
                .filter(p -> p.getPersonTranslation() != null)
                .flatMap(p -> p.getPersonTranslation().stream()
                        .map(t -> new PersonTranslationRow(
                                p.getId(),
                                t.getLocale(),
                                t.getLocaleName(),
                                t.getBiography())))
                .toList();
        saveTranslation(allTranslations);
        return new HashSet<>(personMap.values());
    }

    private void savePerson(List<Person> persons) {
        String sql = """
                INSERT INTO content_service.persons(
                    original_name, birth_date, death_date, gender,
                    birth_place, known_as, photo_url, external_id, source
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
                ON CONFLICT (external_id, source) DO UPDATE
                    SET external_id = EXCLUDED.external_id
                RETURNING id, external_id
                """;
        jdbcTemplate.batchUpdate(
                sql,
                persons,
                500,
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
                }
        );
    }

    private void saveTranslation(List<PersonTranslationRow> translations) {
        jdbcTemplate.batchUpdate(
                """
                INSERT INTO content_service.person_translations(person_id, locale, locale_name, biography)
                VALUES (?, ?, ?, ?)
                ON CONFLICT DO NOTHING
                """,
                translations,
                translations.size(),
                (ps, t) -> {
                    ps.setLong(1, t.personId());
                    ps.setString(2, t.locale());
                    ps.setString(3, t.localeName());
                    ps.setString(4, t.biography());
                }
        );
    }

    private List<PersonIds> getPersonsWithId(List<Long> ids) {
        String sql = """
                SELECT id, external_id
                FROM content_service.persons
                WHERE external_id IN (:externalIds)
                """;
        return namedParameterJdbcTemplate.query(
                sql,
                new MapSqlParameterSource("externalIds" ,ids),
                (rs, rowNum) -> new PersonIds(
                        rs.getLong("id"),
                        rs.getLong("external_id")
                )
        );
    }
}

