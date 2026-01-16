package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.MovieAggregateDto;
import com.sitefilm.etl.dto.core.movie.MovieDetailsDto;
import com.sitefilm.etl.dto.core.movie.MovieTranslationDto;
import com.sitefilm.etl.dto.core.movie.ResponseMovieTranslationDto;
import com.sitefilm.etl.dto.core.person.PersonDetailsDto;
import com.sitefilm.etl.dto.core.person.PersonTranslationDto;
import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.content.movie.MovieDetail;
import com.sitefilm.etl.entity.content.relationship.ContentTranslation;
import com.sitefilm.etl.entity.enums.ContentType;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;

@Component
public class MovieAggregator {
    private static final Set<String> languages = Set.of("en", "ru", "fr", "de", "es");

    public MovieAggregateDto aggregate(MovieDetailsDto movieDetails,
                                       ResponseMovieTranslationDto movieTranslation
                                       ){
        MovieDetail movieDetail = MovieDetail.builder()
                .content(null)
                .durationMinutes(movieDetails.getDuration())
                .cinemaReleaseDate(movieDetails.getReleaseDate())
                .build();

        List<MovieTranslationDto> movieTranslations = getMoviesTranslation(movieTranslation);
        List<ContentTranslation> contentTranslations = contentTranslationMapping(movieTranslations);
        return new MovieAggregateDto(movieDetail, contentTranslations);

    }

    private List<MovieTranslationDto> getMoviesTranslation(ResponseMovieTranslationDto movieTranslation){
        return movieTranslation.getMoviesTranslation().stream()
                .filter(translation ->
                        languages.contains(translation.getIsoCode()))
                .toList();
    }

    private List<ContentTranslation> contentTranslationMapping(List<MovieTranslationDto> movieTranslations){
        return movieTranslations.stream().map(translation -> ContentTranslation.builder()
                .content(null)
                .locale(translation.getIsoCode())
                .title(translation.getDataMovieTranslationList().getTitle())
                .description(translation.getDataMovieTranslationList().getDescription())
                .plotSummary(null)
                .build()).toList();
    }
}
