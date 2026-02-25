package com.sitefilm.etl.service.core.dto;

public record MovieDetailsPersistDto(
        Long content_id,
        Long budget,
        Long boxOffice,
        Short duration
) {}
