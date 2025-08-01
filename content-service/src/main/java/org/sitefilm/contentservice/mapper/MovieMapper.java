package org.sitefilm.contentservice.mapper;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;
import org.sitefilm.contentservice.dto.main.movie.FullMovieDto;
import org.sitefilm.contentservice.dto.main.movie.MinimalMovieForListDto;
import org.sitefilm.contentservice.entity.main.Movie;

import java.time.Duration;
import java.util.List;

@Mapper(componentModel = "spring")
public interface MovieMapper {
    MovieMapper INSTANCE = Mappers.getMapper(MovieMapper.class);

    Movie fullMovieDtoToMovie(FullMovieDto movieDto);

    List<FullMovieDto> fullMovieDtoToMovieList(List<Movie> movieDtoList);

    @Mapping(target = "duration", expression = "java(mapDuration(movie.getDuration()))")
    FullMovieDto movieToFullMovieDto(Movie movie);

    MinimalMovieForListDto movieToMinimalMovieDto(Movie movie);
    Movie minimalMovieDtoToMovie(MinimalMovieForListDto movie);

    default String mapDuration(Duration duration) {
        if (duration == null) {
            return null;
        }
        long hours = duration.toHours();
        long minutes = duration.toMinutesPart();
        return String.format("%02dч.%02dм.", hours, minutes);
    }
}