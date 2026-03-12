package com.sitefilm.etl.domain.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class PersonCastDto {
    @JsonProperty("id")
    private Long externalId;
    @JsonProperty("character")
    private String character;
    @JsonProperty("order")
    private Short order;
}
