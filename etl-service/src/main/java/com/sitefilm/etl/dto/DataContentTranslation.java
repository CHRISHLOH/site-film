package com.sitefilm.etl.dto;

import java.time.OffsetDateTime;


public record DataContentTranslation(
     Long externalContentId,
     String locale,
     String title,
     String description,
     String plotSummary
) {
}
