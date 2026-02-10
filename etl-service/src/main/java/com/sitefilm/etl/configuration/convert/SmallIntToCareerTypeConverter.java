package com.sitefilm.etl.configuration.convert;

import com.sitefilm.etl.entity.enums.CareerType;
import org.springframework.core.convert.converter.Converter;
import org.springframework.data.convert.ReadingConverter;

import java.util.Arrays;

@ReadingConverter
public class SmallIntToCareerTypeConverter
        implements Converter<Number, CareerType> {

    @Override
    public CareerType convert(Number source) {
        return Arrays.stream(CareerType.values())
                .filter(t -> t.getId() == source.intValue())
                .findFirst()
                .orElseThrow(() ->
                        new IllegalArgumentException("Unknown CareerType id: " + source)
                );
    }
}
