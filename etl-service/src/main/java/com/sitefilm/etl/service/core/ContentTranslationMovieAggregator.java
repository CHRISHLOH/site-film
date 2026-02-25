package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.DataContentTranslation;
import com.sitefilm.etl.dto.core.ContentResponse;
import com.sitefilm.etl.dto.core.movie.ContentTranslationDto;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;

@Component
public class ContentTranslationMovieAggregator {
    private static final Set<String> languages = Set.of("English", "Russian", "French", "German", "Spanish");
    private static final Set<String> isoCodes = Set.of("US", "RU", "FR", "DE", "ES");

    public List<DataContentTranslation> aggregate(ContentResponse movieDetails, Long externalId){
        return contentTranslationMapping(
                filterMoviesTranslation(movieDetails.getContentTranslations().getContentTranslations()), externalId);
    }

    private List<ContentTranslationDto> filterMoviesTranslation(List<ContentTranslationDto> movieTranslation){
        return movieTranslation.stream()
                .filter(translation ->
                        languages.contains(translation.getEnglishName()) && isoCodes.contains(translation.getIsoCode()))
                .toList();
    }

    private List<DataContentTranslation> contentTranslationMapping(List<ContentTranslationDto> movieTranslations, Long externalId){
        return movieTranslations.stream().map(translation -> {
            String locale = getDBLocale(translation);
            return new DataContentTranslation(
                externalId,
                    locale,
                translation.getDataContentTranslationList().getTitle(),
                translation.getDataContentTranslationList().getDescription(),
                null
        );}
        ).toList();
    }

    private String getDBLocale(ContentTranslationDto contentTranslationDto) {
        return switch (contentTranslationDto.getEnglishName()) {
            case "English" -> "en-EN";
            case "Russian" -> "ru-RU";
            case "French" -> "fr-FR";
            case "German" -> "de-DE";
            case "Spanish" -> "es-ES";
            default -> "en-US";
        };
    }
}
