package com.sitefilm.etl.configuration.convert;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.postgresql.util.PGobject;
import org.springframework.core.convert.converter.Converter;
import org.springframework.data.convert.WritingConverter;

import java.util.Map;

@WritingConverter
public class MapToJsonbConverter implements Converter<Map<String, String>, PGobject> {

    private static final ObjectMapper mapper = new ObjectMapper();

    @Override
    public PGobject convert(Map<String, String> source) {
        try {
            PGobject json = new PGobject();
            json.setType("jsonb");
            json.setValue(mapper.writeValueAsString(source));
            return json;
        } catch (Exception e) {
            throw new IllegalArgumentException("Failed to convert Map to JSONB", e);
        }
    }
}
