package com.sitefilm.etl.dto.core.person;


import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class PersonCrewDto {
        @JsonProperty("id")
        private Long externalId;
        @JsonProperty("department")
        String department;
        @JsonProperty("job")
        String job;
}
