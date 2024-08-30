package org.sitefilm.contentservice.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;
import org.sitefilm.contentservice.dto.genredto.GenreDto;
import org.sitefilm.contentservice.entity.Genre;

@Mapper(componentModel = "spring")
public interface GenreMapper {

    GenreMapper INSTANCE = Mappers.getMapper(GenreMapper.class);

    Genre genreDtoToGenre(GenreDto genreDto);

    GenreDto genreToGenreDto(Genre genre);
}
