package com.sitefilm.etl.domain.model.dictionaries;

import lombok.Builder;
import lombok.Data;

import java.util.Map;

@Data
@Builder
public class Language{
    private Short id;
    private String iso_639_1;
    private Map<String, String> translations;
}