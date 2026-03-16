package com.sitefilm.etl.infrastructure.provider.tmdb.mapper;

import com.sitefilm.etl.domain.model.ContentTranslationDto;
import com.sitefilm.etl.domain.model.DataContentTranslation;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;

@Component
public class ContentTranslationMovieMapper {

    private static final Set<String> iso_3166_1 = Set.of("US", "RU", "ES", "FR", "DE");
    private static final Set<String> iso_639_1 = Set.of("en", "ru", "es", "fr", "de");

    public List<DataContentTranslation> aggregate(List<ContentTranslationDto> movieTranslations){
        return movieTranslations.stream().filter(contentTranslationDto ->
            iso_639_1.contains(contentTranslationDto.getIso_639_1()) && iso_3166_1.contains(contentTranslationDto.getIso_3166_1())
                ).map(translation -> {
            String locale = getDBLocale(translation);
            return new DataContentTranslation(
                    locale,
                    translation.getDataContentTranslationList().title(),
                    translation.getDataContentTranslationList().description(),
                    null
            );}
        ).toList();
    }

    private String getDBLocale(ContentTranslationDto contentTranslationDto) {
        return switch (contentTranslationDto.getEnglishName()) {
            case "English" -> "en-US";
            case "Russian" -> "ru-RU";
            case "French" -> "fr-FR";
            case "German" -> "de-DE";
            case "Spanish" -> "es-ES";
            default -> throw new RuntimeException();
        };
    }
}
