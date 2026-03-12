package com.sitefilm.etl.domain.model;


public record DataContentTranslation(
     String locale,
     String title,
     String description,
     String plotSummary
) {
}
