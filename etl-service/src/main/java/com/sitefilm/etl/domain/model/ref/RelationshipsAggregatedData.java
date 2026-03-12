package com.sitefilm.etl.domain.model.ref;

import java.util.List;

public record RelationshipsAggregatedData(
        List<ContentCountry> contentCountry,
        List<ContentGenre> contentGenre,
        List<ContentLanguage> contentLanguage,
        List<ContentPerson> contentPerson
) {
}
