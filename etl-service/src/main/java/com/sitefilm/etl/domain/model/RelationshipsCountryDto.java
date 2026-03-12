package com.sitefilm.etl.domain.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public record RelationshipsCountryDto(
        @JsonProperty("iso_3166_1")
        String iso3166_1,
        @JsonProperty("name")
        String name
) {
}
