package com.sitefilm.etl.dto;

import com.sitefilm.etl.dto.core.person.PersonDetailsResponseDto;

import java.util.List;

public record PersonCastAggregateDto(
        PersonDetailsResponseDto personDetails,
        List<PersonTranslationDataDto> personTranslationData
) {
}
