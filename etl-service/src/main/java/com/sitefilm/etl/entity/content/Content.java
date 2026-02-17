package com.sitefilm.etl.entity.content;

import com.sitefilm.etl.entity.enums.AgeRating;
import com.sitefilm.etl.entity.enums.ContentStatus;
import com.sitefilm.etl.entity.enums.ContentType;
import com.sitefilm.etl.entity.enums.Source;
import lombok.*;

import java.time.LocalDate;
import java.time.OffsetDateTime;

@Data
public class Content{
    private Long id;
    private String originalTitle;
    private ContentType contentType;
    private String posterUrl;
    private LocalDate releaseDate;
    private ContentStatus status;
    private AgeRating ageRating;
    private Long budget;
    private Long boxOffice;
    private Long externalId;
    private Source source;
    private Short duration;
    private OffsetDateTime createdAt;
    private OffsetDateTime updatedAt;

    @Override
    public String toString() {
        return "Content{" +
                "originalTitle='" + originalTitle + '\'' +
                ", externalId=" + externalId +
                '}';
    }
}