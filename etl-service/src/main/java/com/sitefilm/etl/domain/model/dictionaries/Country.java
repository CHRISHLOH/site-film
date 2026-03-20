package com.sitefilm.etl.domain.model.dictionaries;

import lombok.Builder;
import lombok.Data;

import java.util.Map;

@Data
@Builder
public class Country{
    private Short id;
    private String iso_3166_1;
    private Map<String, String> translations;
}
