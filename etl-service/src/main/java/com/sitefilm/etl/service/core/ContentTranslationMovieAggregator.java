package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.DataContentTranslation;
import com.sitefilm.etl.dto.core.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.dto.core.movie.MovieTranslationDto;
import com.sitefilm.etl.entity.content.relationship.ContentTranslation;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;

@Component
public class ContentTranslationMovieAggregator {
    private static final Set<String> languages = Set.of("en", "ru", "fr", "de", "es");

    public List<DataContentTranslation> aggregate(MovieDetailsResponseDto movieDetails, Integer externalId){
        return contentTranslationMapping(
                filterMoviesTranslation(movieDetails.getMovieTranslations().getMovieTranslations()), externalId);
    }

    private List<MovieTranslationDto> filterMoviesTranslation(List<MovieTranslationDto> movieTranslation){
        return movieTranslation.stream()
                .filter(translation ->
                        languages.contains(translation.getIsoCode()))
                .toList();
    }

    private List<DataContentTranslation> contentTranslationMapping(List<MovieTranslationDto> movieTranslations, Integer externalId){
        return movieTranslations.stream().map(translation -> new DataContentTranslation(
                externalId,
                translation.getIsoCode(),
                translation.getDataMovieTranslationList().getTitle(),
                translation.getDataMovieTranslationList().getDescription(),
                null
        )).toList();
    }
}
