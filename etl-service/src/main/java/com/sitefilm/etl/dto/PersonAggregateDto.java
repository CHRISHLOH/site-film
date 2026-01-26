package com.sitefilm.etl.dto;

import com.sitefilm.etl.entity.person.Person;
import com.sitefilm.etl.entity.person.relationship.PersonTranslation;

import java.util.List;

public record PersonAggregateDto(
        Person person,
        List<PersonTranslation> personTranslation,
        List<PersonMovieRole> personMovieData
) {
}
