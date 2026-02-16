package com.sitefilm.etl.configuration.convert;

import com.sitefilm.etl.entity.enums.CareerType;
import org.springframework.core.convert.converter.Converter;
import org.springframework.data.convert.WritingConverter;

@WritingConverter
public class CareerTypeToSmallIntConverter
        implements Converter<CareerType, Short> {

    @Override
    public Short convert(CareerType source) {
        return source.getId();
    }
}
