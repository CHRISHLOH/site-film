package com.sitefilm.etl.infrastructure.provider.tmdb.mapper;

import com.sitefilm.etl.infrastructure.provider.tmdb.response.ContentTranslationDto;
import com.sitefilm.etl.domain.model.content.DataContentTranslation;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Component
public class ContentTranslationMovieMapper {

    private static final Set<String> iso_3166_1 = Set.of("RU", "ES", "FR", "DE");
    private static final Set<String> iso_639_1 = Set.of("ru", "es", "fr", "de");
    private static final Set<String> locales = Set.of("ru-RU", "es-ES", "fr-FR", "de-DE", "en-US");

    public List<DataContentTranslation> aggregate(List<ContentTranslationDto> movieTranslations, String title, String description) {

        List<DataContentTranslation> translations = movieTranslations.stream().filter(contentTranslationDto ->
            iso_639_1.contains(contentTranslationDto.getIso_639_1()) && iso_3166_1.contains(contentTranslationDto.getIso_3166_1())
                ).map(translation -> {
            String locale = getDBLocale(translation);
            return new DataContentTranslation(
                    locale,
                    translation.getDataContentTranslationList().title(),
                    translation.getDataContentTranslationList().description(),
                    null
            );}
        ).collect(Collectors.toCollection(ArrayList::new));
        translations.add(new DataContentTranslation("en-US", title, description, null));


        return translations;
    }

    private String getDBLocale(ContentTranslationDto contentTranslationDto) {
        return switch (contentTranslationDto.getIso_639_1()) {
            case "ru" -> "ru-RU";
            case "fr" -> "fr-FR";
            case "de" -> "de-DE";
            case "es" -> "es-ES";
            default -> throw new RuntimeException();
        };
    }
}
