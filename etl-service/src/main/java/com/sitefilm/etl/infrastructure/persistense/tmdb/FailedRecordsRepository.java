package com.sitefilm.etl.infrastructure.persistense.tmdb;

import com.sitefilm.etl.domain.model.failed.FailedRecord;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.Types;

@Repository
public class FailedRecordsRepository {

    private final JdbcTemplate jdbcTemplate;

    public FailedRecordsRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void saveFailedRecord(FailedRecord failedRecord) {
        String sql = """
                INSERT INTO content_service.etl_failed_record(entity_type, external_id, stage, error_type, error_message, payload)
                VALUES (?, ?, ?, ?, ?, ?)
                """;
        jdbcTemplate.update(
                sql,
                ps -> {
                    ps.setShort(1, failedRecord.entityType().getValue());
                    ps.setLong(2, failedRecord.external_id());
                    ps.setShort(3, failedRecord.stage().getValue());
                    ps.setString(4, failedRecord.error_type());
                    ps.setString(5, failedRecord.error_message());
                    ps.setString(6, failedRecord.payload());
                }
        );
    }
}
