package com.sitefilm.etl.dto;

import com.sitefilm.etl.entity.content.Content;

import java.util.List;

public record ContentAggregateDto(
        Content content,
        MovieAggregateDto movieAggregateDto,
        List<PersonAggregateDto> persons
) {
}
