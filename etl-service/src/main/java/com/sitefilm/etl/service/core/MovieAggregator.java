package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.MovieAggregateDto;
import com.sitefilm.etl.dto.core.RelationshipsData;
import com.sitefilm.etl.dto.core.movie.MovieDetailsDto;
import com.sitefilm.etl.dto.core.movie.MovieTranslationDto;
import com.sitefilm.etl.entity.content.movie.MovieDetail;
import com.sitefilm.etl.entity.content.relationship.ContentTranslation;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;

@Component
public class MovieAggregator {
    private static final Set<String> languages = Set.of("en", "ru", "fr", "de", "es");

    public MovieAggregateDto aggregate(MovieDetailsDto movieDetails){
        MovieDetail movieDetail = MovieDetail.builder()
                .content(null)
                .durationMinutes(movieDetails.getDuration())
                .cinemaReleaseDate(movieDetails.getReleaseDate())
                .build();
        List<ContentTranslation> contentTranslations = contentTranslationMapping(
                filterMoviesTranslation(movieDetails.getMovieTranslations().getMovieTranslations()));
        RelationshipsData relationshipsData = new RelationshipsData(movieDetails.getGenres(), movieDetails.getCountries(), movieDetails.getSpokenLanguages());
        return new MovieAggregateDto(movieDetail, contentTranslations,relationshipsData);

    }

    private List<MovieTranslationDto> filterMoviesTranslation(List<MovieTranslationDto> movieTranslation){
        return movieTranslation.stream()
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
