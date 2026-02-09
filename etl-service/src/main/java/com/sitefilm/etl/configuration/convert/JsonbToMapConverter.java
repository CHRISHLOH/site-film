package com.sitefilm.etl.configuration.convert;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.core.convert.converter.Converter;
import org.springframework.data.convert.ReadingConverter;
import org.postgresql.util.PGobject;

import java.util.Map;

@ReadingConverter
public class JsonbToMapConverter implements Converter<PGobject, Map<String, String>> {

    private static final ObjectMapper mapper = new ObjectMapper();

    @Override
    public Map<String, String> convert(PGobject source) {
        if (source.getValue() == null) return Map.of();
        try {
            return mapper.readValue(
                    source.getValue(),
                    new TypeReference<>() {}
            );
        } catch (Exception e) {
            throw new IllegalArgumentException("Failed to convert JSONB to Map", e);
        }
    }
}