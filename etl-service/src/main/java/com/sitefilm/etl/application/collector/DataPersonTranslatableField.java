package com.sitefilm.etl.application.collector;

import com.sitefilm.etl.domain.model.person.DataPersonTranslation;

import java.util.HashMap;
import java.util.Map;

public class DataPersonTranslatableField implements TranslatableFieldProvider{
    private final DataPersonTranslation dto;

    public DataPersonTranslatableField(DataPersonTranslation dto) {
        this.dto = dto;
    }

    public String locale() {
        return dto.getLocale();
    }

    public Map<String, String> fields() {
        Map<String, String> map = new HashMap<>();
        map.put("name", dto.getLocaleName());
        map.put("biography", dto.getBiography());
        return map;
    }
}
