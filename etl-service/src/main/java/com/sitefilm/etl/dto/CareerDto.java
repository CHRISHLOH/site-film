package com.sitefilm.etl.dto;

import lombok.Data;

import java.util.List;

@Data
public class CareerDto {
    private Long id;
    private String department;
    private List<String> jobs;
}
