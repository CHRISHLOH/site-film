package com.sitefilm.etl.dto;

import java.time.OffsetDateTime;

public record DataPersonTranslation(
        Long externalPersonId,
        String locale,
        String localeName,
        String biography
) {
}
