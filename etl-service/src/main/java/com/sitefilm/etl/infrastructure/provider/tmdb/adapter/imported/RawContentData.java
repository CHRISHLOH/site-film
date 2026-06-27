package com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported;

import com.sitefilm.etl.domain.model.Source;
import com.sitefilm.etl.domain.model.content.DataContentTranslation;
import com.sitefilm.etl.domain.model.content.Details;
import com.sitefilm.etl.domain.model.content.enums.AgeRating;
import com.sitefilm.etl.domain.model.content.enums.ContentStatus;
import com.sitefilm.etl.domain.model.content.enums.ContentType;

import java.util.List;

public record RawContentData(
        String originalTitle,
        ContentType contentType,
        ContentStatus status,
        Long externalId,
        Source source,
        AgeRating ageRating,
        List<DataContentTranslation> translations,
        Details details,
        List<Integer> genreExternalIds,
        List<String> countryIsoCodes,
        List<String> languageIsoCodes,
        CreditsImported credits
) {}
