package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

import com.sitefilm.etl.domain.model.Source;
import com.sitefilm.etl.domain.model.content.DataContentTranslation;
import com.sitefilm.etl.domain.model.content.enums.AgeRating;
import com.sitefilm.etl.domain.model.content.enums.ContentStatus;
import com.sitefilm.etl.domain.model.content.enums.ContentType;
import lombok.Builder;
import lombok.Data;

import java.time.LocalDate;
import java.util.List;

@Data
@Builder
public class ImportedMovie implements Imported {
    private String originalTitle;
    private ContentType contentType;
    private ContentStatus status;
    private AgeRating ageRating;
    private Long externalId;
    private Source source;
    private List<DataContentTranslation> translation;
    private Long budget;
    private Long boxOffice;
    private Short duration;
    private LocalDate releaseDate;
    private List<Integer> genres;
    private List<String> countries;
    private List<String> spokenLanguages;

}
