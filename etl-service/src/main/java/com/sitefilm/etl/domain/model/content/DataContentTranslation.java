package com.sitefilm.etl.domain.model.content;


public record DataContentTranslation(
     String locale,
     String title,
     String description,
     String plotSummary
) {
}
