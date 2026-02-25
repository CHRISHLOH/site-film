package com.sitefilm.etl.dto;

import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.service.core.dto.RelationshipsForDataSaveDto;

import java.util.List;

public record SeriesAggregateResult(
        Content content,
        List<DataContentTranslation> contentTranslations,
        List<PersonAggregateDto> persons,
        DictionariesDto dictionariesDto,
        RelationshipsForDataSaveDto relationships,
        SeriesDetailsPersistDto persistDto
) implements ContentAggregateDto {}
