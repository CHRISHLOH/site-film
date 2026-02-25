package com.sitefilm.etl.service.core.dto;

import com.sitefilm.etl.dto.DataContentTranslation;
import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.dto.PersonAggregateDto;
import com.sitefilm.etl.entity.content.Content;

import java.util.List;

public record CommonAggregateData(
        Content content,
        List<DataContentTranslation> contentTranslations,
        List<PersonAggregateDto> persons,
        DictionariesDto dictionariesDto,
        RelationshipsForDataSaveDto relationships
) {
}
