package org.sitefilm.contentservice.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;
import org.sitefilm.contentservice.dto.moviedto.MovieDto;
import org.sitefilm.contentservice.entity.Movie;

@Mapper(componentModel = "spring")
public interface MovieMapper {
    MovieMapper INSTANCE = Mappers.getMapper(MovieMapper.class);

    Movie movieDtoToMovie(MovieDto movieDto);

    MovieDto movieToMovieDto(Movie movie);
}