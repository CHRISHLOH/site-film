package com.sitefilm.etl.entity.directories;

import lombok.*;

import java.util.Map;

@Data
@ToString
public class Country{
    private Short id;
    private String isoCode;
    private Map<String, String> translations;
}