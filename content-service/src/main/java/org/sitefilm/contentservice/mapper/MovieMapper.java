package org.sitefilm.contentservice.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;
import org.sitefilm.contentservice.dto.moviedto.MovieDto;
import org.sitefilm.contentservice.dto.moviedto.NewMovieDto;
import org.sitefilm.contentservice.dto.moviedto.UpdateMovieDto;
import org.sitefilm.contentservice.entity.Movie;

@Mapper(componentModel = "spring")
public interface MovieMapper {
    MovieMapper INSTANCE = Mappers.getMapper(MovieMapper.class);

    @Mapping(target = "id", ignore = true)
    Movie newMovieToMovieEntity(NewMovieDto dto);

    MovieDto movieToMovieDto(Movie movie);

    UpdateMovieDto movieToUpdateMovie(Movie movie);

    @Mapping(target = "id", ignore = true)
    Movie updateMovieToMovieEntity(UpdateMovieDto dto);
}