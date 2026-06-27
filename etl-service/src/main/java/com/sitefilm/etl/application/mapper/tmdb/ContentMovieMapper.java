package com.sitefilm.etl.application.mapper.tmdb;

import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.domain.model.content.Details;
import com.sitefilm.etl.domain.model.content.enums.LoadContentType;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedContent;
import org.springframework.stereotype.Component;

import java.util.Collections;

@Component
public class ContentMovieMapper{
    private final ContentDetailsMapperFactory cdMapperFactory;

    public ContentMovieMapper(ContentDetailsMapperFactory cdMapperFactory) {
        this.cdMapperFactory = cdMapperFactory;
    }

    public Content aggregateToDomain(ImportedContent importedContent, LoadContentType loadContentType) {
        Details details = cdMapperFactory.getMapper(loadContentType).details(importedContent);
        return Content.builder()
                .originalTitle(importedContent.getOriginalTitle())
                .contentType(importedContent.getContentType())
                .status(importedContent.getStatus())
                .ageRating(importedContent.getAgeRating())
                .externalId(importedContent.getExternalId())
                .source(importedContent.getSource())
                .translations(importedContent.getTranslation())
                .genres(Collections.emptyList())
                .countries(Collections.emptyList())
                .spokenLanguages(Collections.emptyList())
                .details(details)
                .build();
    }
}