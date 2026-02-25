package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.ContentAggregateDto;
import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.dto.core.ContentResponse;
import com.sitefilm.etl.dto.core.person.PersonsInMovieResponseDto;
import com.sitefilm.etl.entity.enums.ContentType;

public interface ContentLoadStrategy<T extends ContentResponse> {
    ContentType supportedType();
    T loadDetails(Long externalId);
    ContentAggregateDto aggregate(T details, PersonsInMovieResponseDto cast, DictionariesDto dict);
}
