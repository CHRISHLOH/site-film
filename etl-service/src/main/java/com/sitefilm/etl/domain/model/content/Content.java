package com.sitefilm.etl.domain.model.content;

import com.sitefilm.etl.domain.model.ref.ContentCountry;
import com.sitefilm.etl.domain.model.ref.ContentGenre;
import com.sitefilm.etl.domain.model.ref.ContentLanguage;
import com.sitefilm.etl.domain.model.content.enums.AgeRating;
import com.sitefilm.etl.domain.model.content.enums.ContentStatus;
import com.sitefilm.etl.domain.model.content.enums.ContentType;
import com.sitefilm.etl.domain.model.Source;
import lombok.*;

import java.time.OffsetDateTime;
import java.util.List;

@Data
@Builder
public class Content {
    private Long id;
    private String originalTitle;
    private ContentType contentType;
    private ContentStatus status;
    private AgeRating ageRating;
    private Long externalId;
    private Source source;
    private List<DataContentTranslation> translations;
    private List<ContentGenre> genres;
    private List<ContentCountry> countries;
    private List<ContentLanguage> spokenLanguages;
    private Details details;
    private OffsetDateTime createdAt;
    private OffsetDateTime updatedAt;
}