package com.sitefilm.etl.infrastructure.provider.tmdb.mapper;

import com.sitefilm.etl.domain.model.ContentTranslationDto;
import com.sitefilm.etl.domain.model.DataContentTranslation;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ContentTranslationMovieMapper {

    public List<DataContentTranslation> aggregate(List<ContentTranslationDto> movieTranslations){
        return movieTranslations.stream().map(translation -> {
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
            case "English" -> "en-EN";
            case "Russian" -> "ru-RU";
            case "French" -> "fr-FR";
            case "German" -> "de-DE";
            case "Spanish" -> "es-ES";
            default -> "en-US";
        };
    }
}
