package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.core.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.dto.core.movie.MovieTranslationDto;
import com.sitefilm.etl.entity.content.relationship.ContentTranslation;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;

@Component
public class ContentTranslationMovieAggregator {
    private static final Set<String> languages = Set.of("en", "ru", "fr", "de", "es");

    public List<ContentTranslation> aggregate(MovieDetailsResponseDto movieDetails){
        return contentTranslationMapping(
                filterMoviesTranslation(movieDetails.getMovieTranslations().getMovieTranslations()));
    }

    private List<MovieTranslationDto> filterMoviesTranslation(List<MovieTranslationDto> movieTranslation){
        return movieTranslation.stream()
                .filter(translation ->
                        languages.contains(translation.getIsoCode()))
                .toList();
    }

    private List<ContentTranslation> contentTranslationMapping(List<MovieTranslationDto> movieTranslations){
        return movieTranslations.stream().map(translation -> ContentTranslation.builder()
                .contentId(null)
                .locale(translation.getIsoCode())
                .title(translation.getDataMovieTranslationList().getTitle())
                .description(translation.getDataMovieTranslationList().getDescription())
                .plotSummary(null)
                .build()).toList();
    }
}
