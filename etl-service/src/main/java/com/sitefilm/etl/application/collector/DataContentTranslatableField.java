package com.sitefilm.etl.application.collector;

import com.sitefilm.etl.domain.model.content.DataContentTranslation;

import java.util.HashMap;
import java.util.Map;

public class DataContentTranslatableField implements TranslatableFieldProvider{
    private final DataContentTranslation dto;

    public DataContentTranslatableField(DataContentTranslation dto) {
        this.dto = dto;
    }

    public String locale() {
        return dto.locale();
    }

    public Map<String, String> fields() {
        Map<String, String> map = new HashMap<>();
        map.put("title", dto.title());
        map.put("description", dto.description());
        return map;
    }
}
