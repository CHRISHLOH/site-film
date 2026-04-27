package com.sitefilm.etl.domain.model.failed;

import java.time.OffsetDateTime;

public record FailedRecord(
        Integer id,
        EntityType entityType,
        Long external_id,
        Stage stage,
        String error_type,
        String error_message,
        String payload,
        OffsetDateTime createdAt
) {
}
