package org.sitefilm.contentservice.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import org.sitefilm.contentservice.dto.CountryDto;
import org.sitefilm.contentservice.entity.Country;

@Mapper(componentModel = "spring")
public interface CountryMapper {
    CountryMapper INSTANCE = Mappers.getMapper(CountryMapper.class);

    Country countryDtoToCountry(CountryDto countryDto);

    CountryDto countryToCountryDto(Country country);
}
