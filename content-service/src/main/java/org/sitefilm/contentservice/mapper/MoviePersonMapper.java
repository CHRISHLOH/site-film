package org.sitefilm.contentservice.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import org.sitefilm.contentservice.dto.main.MoviePersonDto;
import org.sitefilm.contentservice.entity.main.movie.MoviePerson;

@Mapper(componentModel = "spring")
public interface MoviePersonMapper {
    MoviePersonMapper INSTANCE = Mappers.getMapper(MoviePersonMapper.class);

    MoviePerson moviePersonDtoToMoviePerson(MoviePersonDto dto);

    MoviePersonDto moviePersonToMoviePersonDto(MoviePerson moviePerson);
}
