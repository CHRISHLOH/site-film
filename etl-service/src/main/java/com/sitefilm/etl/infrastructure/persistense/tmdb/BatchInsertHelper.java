package com.sitefilm.etl.infrastructure.persistense.tmdb;

import org.springframework.jdbc.core.ConnectionCallback;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Component
public class BatchInsertHelper {
    public <T> List<T> batchInsertWithReturning(
            JdbcTemplate jdbcTemplate,
            String sql,
            List<T> items,
            PreparedStatementBinder<T> binder,
            RowMapper<T> mapper
    ) {
        if (items == null || items.isEmpty()) {
            return Collections.emptyList();
        }
        return jdbcTemplate.execute((ConnectionCallback<List<T>>) conn -> {
            List<T> results = new ArrayList<>(items.size());
            try (PreparedStatement ps = conn.prepareStatement(sql)) {
                for (T item : items) {
                    binder.bind(ps, item);
                    try (ResultSet rs = ps.executeQuery()) {
                        while (rs.next()) {
                            results.add(mapper.mapRow(rs, results.size()));
                        }
                    }
                }
            }
            return results;
        });
    }
}
