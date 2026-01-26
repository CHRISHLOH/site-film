package com.sitefilm.etl.service.core;

import com.sitefilm.etl.entity.content.relationship.ContentCountry;
import com.sitefilm.etl.entity.content.relationship.ContentGenre;
import com.sitefilm.etl.entity.content.relationship.ContentPerson;

import java.util.List;

public record RelationshipsForDataSaveDto(
        List<ContentCountry> contentCountries,
        List<ContentGenre> contentGenres,
        List<ContentPerson> contentPerson
) {
}
