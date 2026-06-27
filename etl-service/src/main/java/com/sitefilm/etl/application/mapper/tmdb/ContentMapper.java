package com.sitefilm.etl.application.mapper.tmdb;

import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.RawContentData;
import org.springframework.stereotype.Component;

import java.util.Collections;

@Component
public class ContentMapper {
    public Content aggregateToDomain(RawContentData data) {
        return Content.builder()
                .originalTitle(data.originalTitle())
                .contentType(data.contentType())
                .status(data.status())
                .ageRating(data.ageRating())
                .externalId(data.externalId())
                .source(data.source())
                .translations(data.translations())
                .genres(Collections.emptyList())
                .countries(Collections.emptyList())
                .spokenLanguages(Collections.emptyList())
                .details(data.details())
                .build();
    }
}