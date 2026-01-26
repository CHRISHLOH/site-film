package com.sitefilm.etl.dto.core.person;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class PersonCastDto {
        @JsonProperty("id")
        private Long externalId;
        @JsonProperty("character")
        private String character;
        @JsonProperty("order")
        private Integer order;
}
