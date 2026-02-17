package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.DataContentTranslation;
import com.sitefilm.etl.dto.core.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.dto.core.movie.MovieTranslationDto;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;

@Component
public class ContentTranslationMovieAggregator {
    private static final Set<String> languages = Set.of("English", "Russian", "French", "German", "Spanish");
    private static final Set<String> isoCodes = Set.of("US", "RU", "FR", "DE", "ES");

    public List<DataContentTranslation> aggregate(MovieDetailsResponseDto movieDetails, Long externalId){
        return contentTranslationMapping(
                filterMoviesTranslation(movieDetails.getMovieTranslations().getMovieTranslations()), externalId);
    }

    private List<MovieTranslationDto> filterMoviesTranslation(List<MovieTranslationDto> movieTranslation){
        return movieTranslation.stream()
                .filter(translation ->
                        languages.contains(translation.getEnglishName()) && isoCodes.contains(translation.getIsoCode()))
                .toList();
    }

    private List<DataContentTranslation> contentTranslationMapping(List<MovieTranslationDto> movieTranslations, Long externalId){
        return movieTranslations.stream().map(translation -> {
            String locale = getDBLocale(translation);
            return new DataContentTranslation(
                externalId,
                    locale,
                translation.getDataMovieTranslationList().getTitle(),
                translation.getDataMovieTranslationList().getDescription(),
                null
        );}
        ).toList();
    }

    private String getDBLocale(MovieTranslationDto movieTranslationDto) {
        return switch (movieTranslationDto.getEnglishName()) {
            case "English" -> "en-EN";
            case "Russian" -> "ru-RU";
            case "French" -> "fr-FR";
            case "German" -> "de-DE";
            case "Spanish" -> "es-ES";
            default -> "en-US";
        };
    }
}
