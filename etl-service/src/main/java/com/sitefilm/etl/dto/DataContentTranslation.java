package com.sitefilm.etl.dto;

import java.time.OffsetDateTime;


public record DataContentTranslation(
     Long externalContentId,
     String locale,
     String title,
     String description,
     String plotSummary
) {
    @Override
    public String toString() {
        return "DataContentTranslation{" +
                "externalContentId=" + externalContentId +
                ", locale='" + locale + '\'' +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", plotSummary='" + plotSummary + '\'' +
                '}';
    }
}
