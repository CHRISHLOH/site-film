package org.sitefilm.contentservice.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;
import org.sitefilm.contentservice.dto.genredto.GenreDto;
import org.sitefilm.contentservice.dto.genredto.NewGenreDto;
import org.sitefilm.contentservice.entity.Genre;

@Mapper(componentModel = "spring")
public interface GenreMapper {

    MovieMapper INSTANCE = Mappers.getMapper(MovieMapper.class);
    GenreDto genreToGenreDto(Genre genre);

    @Mapping(target = "id", ignore = true)
    Genre newGenreToGenreEntity(NewGenreDto newGenreDto);
}
