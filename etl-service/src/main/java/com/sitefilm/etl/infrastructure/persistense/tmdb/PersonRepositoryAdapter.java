package com.sitefilm.etl.infrastructure.persistense.tmdb;

import com.sitefilm.etl.domain.model.DataPersonTranslation;
import com.sitefilm.etl.domain.model.Person;
import com.sitefilm.etl.domain.port.repository.PersonRepositoryPort;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.sql.Date;
import java.util.*;

@Repository
public class PersonRepositoryAdapter implements PersonRepositoryPort {
    private final NamedParameterJdbcTemplate namedParameterJdbcTemplate;
    private final JdbcTemplate jdbcTemplate;

    public PersonRepositoryAdapter(NamedParameterJdbcTemplate namedParameterJdbcTemplate, JdbcTemplate jdbcTemplate) {
        this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Set<Long> existPersons(List<Long> ids) {
        if (ids == null || ids.isEmpty()) {
            return Collections.emptySet();
        }
        SqlParameterSource parameters = new MapSqlParameterSource("externalIds", ids);

        List<Long> result = namedParameterJdbcTemplate.query(
                """
                        SELECT external_id
                        FROM content_service.persons
                        WHERE external_id IN (:externalIds)
                        """,
                parameters,
                (rs, rowNum) -> rs.getLong("external_id")
        );
        return new HashSet<>(result);
    }

    @Override
    public Set<Person> save(List<Person> persons) {
        List<Person> personsWithId = savePerson(persons);
        List<DataPersonTranslation> allTranslations = personsWithId.stream()
                .flatMap(person -> person.getPersonTranslation().stream()
                        .peek(t -> t.setPersonId(person.getId())))
                .toList();
        saveTranslation(allTranslations);
        return new HashSet<>(personsWithId);
    }

    public List<Person> savePerson(List<Person> persons) {
        String sql = """
                INSERT INTO content_service.persons(
                    original_name, birth_date, death_date, gender, birth_place, known_as, photo_url, external_id, source
                ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
                ON CONFLICT (external_id, source) DO NOTHING
                RETURNING id
                """;
        List<Person> personIds = new ArrayList<>(persons.size());
        for (Person person : persons) {
            Person result = jdbcTemplate.queryForObject(
                    sql,
                    (rs, rowNum) ->
                            Person.builder()
                                    .id( rs.getLong("id"))
                                    .externalId(rs.getLong("external_id"))
                                    .personTranslation(person.getPersonTranslation()).build(),
                    person.getName(),
                    person.getBirthDate() != null ? Date.valueOf(person.getBirthDate()) : null,
                    person.getDeathDate() != null ? Date.valueOf(person.getDeathDate()) : null,
                    person.getGender().getGenderId(),
                    person.getBirthPlace(),
                    person.getKnownAs() != null ? person.getKnownAs().getId() : 1,
                    person.getPhotoUrl(),
                    person.getExternalId(),
                    person.getSource().getId()
            );
            personIds.add(result);
        }
        return personIds;
    }

    public void saveTranslation(List<DataPersonTranslation> translations) {
        jdbcTemplate.batchUpdate("""
                            INSERT INTO content_service.person_translations(person_id, locale, locale_name, biography)
                            VALUES (?, ?, ?, ?)
                """,
                translations,
                translations.size(),
                (ps, t) -> {
                    ps.setLong(1, t.getPersonId());
                    ps.setString(2, t.getLocale());
                    ps.setString(3, t.getLocaleName());
                    ps.setString(4, t.getBiography());
                }
        );
    }
}

