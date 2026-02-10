package com.sitefilm.etl.dto;

import java.time.OffsetDateTime;


public record DataContentTranslation(
     Integer externalContentId,
     String locale,
     String title,
     String description,
     String plotSummary
) {
}
