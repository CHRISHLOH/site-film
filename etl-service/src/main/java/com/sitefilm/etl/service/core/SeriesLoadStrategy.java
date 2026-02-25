package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.ContentAggregateDto;
import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.dto.SeriesDetailsResponseDto;
import com.sitefilm.etl.dto.core.person.PersonsInMovieResponseDto;
import com.sitefilm.etl.entity.enums.ContentType;
import org.springframework.stereotype.Component;

@Component
public class SeriesLoadStrategy implements ContentLoadStrategy<SeriesDetailsResponseDto> {
    private static final ContentType contentType = ContentType.SERIES;
    private final CoreTmdbClient  coreTmdbClient;

    public SeriesLoadStrategy(CoreTmdbClient coreTmdbClient) {
        this.coreTmdbClient = coreTmdbClient;
    }

    @Override
    public ContentType supportedType() {
        return contentType;
    }

    @Override
    public SeriesDetailsResponseDto loadDetails(Long externalId) {
        return coreTmdbClient.;
    }

    @Override
    public ContentAggregateDto aggregate(SeriesDetailsResponseDto details, PersonsInMovieResponseDto cast, DictionariesDto dict) {
        return null;
    }

}
