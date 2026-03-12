package com.sitefilm.etl.configuration.convert;

import org.springframework.stereotype.Component;
import tools.jackson.databind.JavaType;
import tools.jackson.databind.ObjectMapper;

import java.util.Map;

@Component
public class JsonbMapper {

    private final ObjectMapper mapper;
    private final JavaType translationsType;

    public JsonbMapper(ObjectMapper mapper) {
        this.mapper = mapper;
        this.translationsType = mapper.getTypeFactory()
                .constructMapType(Map.class, String.class, String.class);
    }

    public String toJson(Object value) {
        try {
            if (value == null) {
                return null;
            }
            return mapper.writeValueAsString(value);
        } catch (RuntimeException e) {
            throw new IllegalStateException("Failed to convert object to JSON", e);
        }
    }

    public <T> T fromJson(String json, JavaType type) {
        try {
            if (json == null) {
                return null;
            }
            return mapper.readValue(json, type);
        } catch (RuntimeException e) {
            throw new IllegalStateException("Failed to read JSON", e);
        }
    }

    public Map<String, String> readTranslations(String json) {
        try {
            if (json == null) {
                return null;
            }
            return mapper.readValue(json, translationsType);
        } catch (RuntimeException e) {
            throw new IllegalStateException("Failed to read translations JSON", e);
        }
    }
}
