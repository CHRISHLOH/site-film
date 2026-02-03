package com.sitefilm.etl.configuration;

import com.sitefilm.etl.entity.enums.CareerType;
import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

import java.util.Arrays;

@Converter(autoApply = true)
public class CareerTypeConverter
        implements AttributeConverter<CareerType, Short> {

    @Override
    public Short convertToDatabaseColumn(CareerType attribute) {
        return attribute == null ? null : (short) attribute.getId();
    }

    @Override
    public CareerType convertToEntityAttribute(Short dbData) {
        if (dbData == null) return null;
        return Arrays.stream(CareerType.values())
                .filter(c -> c.getId() == dbData)
                .findFirst()
                .orElseThrow(() ->
                        new IllegalArgumentException("Unknown CareerType id: " + dbData)
                );
    }
}
