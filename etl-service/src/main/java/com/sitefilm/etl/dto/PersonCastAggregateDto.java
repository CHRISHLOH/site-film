package com.sitefilm.etl.dto;

import com.sitefilm.etl.dto.core.person.PersonDetailsDto;
import com.sitefilm.etl.dto.core.person.ResponsePersonTranslationDto;

import java.util.List;

public record PersonCastAggregateDto(
        PersonDetailsDto personDetails,
        List<PersonTranslationDataDto> personTranslationData
) {
}
