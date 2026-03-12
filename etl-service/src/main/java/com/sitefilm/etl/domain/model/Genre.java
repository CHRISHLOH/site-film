package com.sitefilm.etl.domain.model;

import lombok.*;

import java.util.Map;

@Data
@ToString
public class Genre {
    private Short id;
    private Integer externalId;
    private Map<String, String> translations;
}