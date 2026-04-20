package com.sitefilm.etl.infrastructure.provider.tmdb.mapper;

import com.sitefilm.etl.domain.model.person.DataPersonTranslation;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonTranslationDto;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Component
public class PersonTranslationMapper {
    private static final Set<String> LOCALES = Set.of("ru-RU","fr-FR", "es-ES", "de-DE");
    private static final Set<String> iso_3166_1 = Set.of("RU", "ES", "FR", "DE");
    private static final Set<String> iso_639_1 = Set.of("ru", "es", "fr", "de");

    public List<DataPersonTranslation> mapTranslation(List<PersonTranslationDto> personTranslations, String requestName, String requestBiography) {
        List<DataPersonTranslation> list = personTranslations.stream()
                .filter(t -> iso_3166_1.contains(t.getIso_3166_1()) && iso_639_1.contains(t.getIso_639_1()))
                .map(t -> {
                    String locale = getDBLocale(t.getIso_639_1());
                    String biography = t.getPersonData().getBiography() != null &&
                                    !t.getPersonData().getBiography().isBlank()
                                    ? t.getPersonData().getBiography() : null;
                    String localeName = t.getPersonData().getName() != null && !
                            t.getPersonData().getName().isBlank()
                            ? t.getPersonData().getName() :null;
                    DataPersonTranslation dataPersonTranslation = new DataPersonTranslation();
                    dataPersonTranslation.setBiography(biography);
                    dataPersonTranslation.setLocaleName(localeName);
                    dataPersonTranslation.setLocale(locale);
                    return dataPersonTranslation;
                })
                .collect(Collectors.toList());
        list.add(addRequestTranslation(requestName, requestBiography));
        return addMissingTranslations(list);
    }

    private String getDBLocale(String iso_639_1) {
        return switch (iso_639_1) {
            case "ru" -> "ru-RU";
            case "fr" -> "fr-FR";
            case "de" -> "de-DE";
            case "es" -> "es-ES";
            case "en" -> "en-US";
            default -> throw new RuntimeException();
        };
    }

    private List<DataPersonTranslation> addMissingTranslations(List<DataPersonTranslation> translations) {
        Set<String> existingLocales = translations.stream()
                .map(DataPersonTranslation::getLocale)
                .collect(Collectors.toSet());
        List<DataPersonTranslation> missing = LOCALES.stream()
                .filter(locale -> !existingLocales.contains(locale))
                .map(locale -> new DataPersonTranslation(locale, null, null))
                .toList();
        return Stream.concat(translations.stream(), missing.stream())
                .toList();
    }

    private DataPersonTranslation addRequestTranslation(String requestName, String requestBiography) {
        DataPersonTranslation dataPersonTranslation = new DataPersonTranslation();
        String name = requestName != null &&  !requestName.isBlank() ? requestName : null;
        String biography = requestBiography != null && !requestBiography.isBlank() ? requestBiography : null;
        dataPersonTranslation.setLocale("en-US");
        dataPersonTranslation.setLocaleName(name);
        dataPersonTranslation.setBiography(biography);
        return dataPersonTranslation;
    }
}
