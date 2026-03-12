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
public class PersonCrewDto {
    @JsonProperty("id")
    private Long externalId;
    @JsonProperty("department")
    private String department;
    @JsonProperty("job")
    private String job;
}
