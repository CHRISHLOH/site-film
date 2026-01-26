package com.sitefilm.etl.dto.core.person;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public abstract class PersonId {
    @JsonProperty("id")
    private Long externalId;
}
