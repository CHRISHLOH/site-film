package com.sitefilm.etl.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class SeasonId {
    @JsonProperty("id")
    private Long externalId;
}
