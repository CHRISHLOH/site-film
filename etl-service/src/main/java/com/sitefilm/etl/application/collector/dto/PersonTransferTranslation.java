package com.sitefilm.etl.application.collector.dto;

import com.sitefilm.etl.domain.model.person.DataPersonTranslation;

import java.util.List;

public record PersonTransferTranslation(
        Long personId,
        List<DataPersonTranslation> personTranslations
) {
}
