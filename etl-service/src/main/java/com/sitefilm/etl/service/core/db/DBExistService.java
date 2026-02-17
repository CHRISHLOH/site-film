package com.sitefilm.etl.service.core.db;

import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Service
public class DBExistService {
    private final NamedParameterJdbcTemplate jdbcTemplate;

    public DBExistService(NamedParameterJdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public Set<Long> personExist(List<Long> externalIds) {
        if (externalIds == null || externalIds.isEmpty()) {
            return Collections.emptySet();
        }
        SqlParameterSource parameters = new MapSqlParameterSource("externalIds", externalIds);

        List<Long> result = jdbcTemplate.query(
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
}
