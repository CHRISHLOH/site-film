package com.sitefilm.etl.domain.model;

import com.sitefilm.etl.domain.model.ref.ContentPerson;

import java.util.List;

public record AggregatedContentImport (
        Content content,
        List<Person> persons,
        List<ContentPerson> contentPersonList
){}
