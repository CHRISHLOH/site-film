package com.sitefilm.etl.service.dictionaries.db;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.postgresql.util.PGobject;
import org.springframework.stereotype.Component;

@Component
public class JsonbMapper {

    private final ObjectMapper mapper;

    public JsonbMapper(ObjectMapper mapper) {
        this.mapper = mapper;
    }

    public PGobject toJsonb(Object value) {
        try {
            PGobject json = new PGobject();
            json.setType("jsonb");
            json.setValue(mapper.writeValueAsString(value));
            return json;
        } catch (Exception e) {
            throw new IllegalStateException("Failed to convert to jsonb", e);
        }
    }

    public <T> T fromJsonb(String json, TypeReference<T> type) {
        try {
            if (json == null) {
                return null;
            }
            return mapper.readValue(json, type);
        } catch (Exception e) {
            throw new IllegalStateException("Failed to read from jsonb", e);
        }
    }
}
