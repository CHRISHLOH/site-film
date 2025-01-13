package org.sitefilm.contentservice.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import org.sitefilm.contentservice.dto.main.person.FullPersonDto;
import org.sitefilm.contentservice.dto.main.person.MinimalPersonDto;
import org.sitefilm.contentservice.entity.main.Movie;
import org.sitefilm.contentservice.entity.main.Person;


@Mapper(componentModel = "spring")
public interface PersonMapper {
    PersonMapper INSTANCE = Mappers.getMapper(PersonMapper.class);

}
