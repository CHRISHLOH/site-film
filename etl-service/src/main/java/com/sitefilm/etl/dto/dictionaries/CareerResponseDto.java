package com.sitefilm.etl.dto.dictionaries;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.List;

@Data
public class CareerResponseDto {
    @JsonProperty("department")
    private String department;
    @JsonProperty("jobs")
    private List<String> jobs;
}
