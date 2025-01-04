package org.sitefilm.contentservice.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import org.sitefilm.contentservice.dto.CareerDto;
import org.sitefilm.contentservice.entity.Career;

import java.util.Set;

@Mapper(componentModel = "spring")
public interface CareerMapper {
    CareerMapper INSTANCE = Mappers.getMapper(CareerMapper.class);

    Career careerDtoToCareer(CareerDto careerDto);

    CareerDto careerToCareerDto(Career career);

    Set<CareerDto> careerListToCareerDtoSet(Set<Career> career);
}
