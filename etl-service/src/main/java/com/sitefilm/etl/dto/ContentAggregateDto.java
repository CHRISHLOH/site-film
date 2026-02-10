package com.sitefilm.etl.dto;

import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.content.relationship.ContentTranslation;
import com.sitefilm.etl.entity.directories.Country;
import com.sitefilm.etl.entity.directories.Genre;
import com.sitefilm.etl.entity.directories.Language;
import com.sitefilm.etl.service.core.RelationshipsForDataSaveDto;

import java.util.List;

public record ContentAggregateDto(
        Content content,
        List<DataContentTranslation> contentTranslations,
        List<PersonAggregateDto> persons,
        DictionariesDto dictionariesDto,
        RelationshipsForDataSaveDto relationships
) {
}
