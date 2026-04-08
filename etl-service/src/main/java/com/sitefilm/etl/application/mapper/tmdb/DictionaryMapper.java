package com.sitefilm.etl.application.mapper.tmdb;

import com.sitefilm.etl.domain.model.dictionaries.Career;
import com.sitefilm.etl.domain.model.dictionaries.Country;
import com.sitefilm.etl.domain.model.dictionaries.Genre;
import com.sitefilm.etl.domain.model.dictionaries.Language;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.CareerImported;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.CountryImported;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.GenreImported;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.LanguageImported;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class DictionaryMapper {

    public List<Genre> genreMapping(List<GenreImported> importedGenres) {
        Map<Integer, Genre> finalMap = new HashMap<>();
        for (GenreImported dto : importedGenres) {
            finalMap
                    .computeIfAbsent(dto.externalId(), extId -> {
                        Genre g = new Genre();
                        g.setExternalId(extId);
                        g.setTranslations(new HashMap<>());
                        return g;
                    })
                    .getTranslations()
                    .put(localeMapping(dto.language()), dto.name());
        }
        return new ArrayList<>(finalMap.values());
    }

    public List<Career> careerMapping(List<CareerImported> importedCareers) {
        return importedCareers.stream().map(dto ->
                Career.builder()
                        .type(dto.type())
                        .translations(dto.translations())
                        .build()
        ).toList();
    }

    public List<Country> countryMapping(List<CountryImported> importedCountries) {
        return importedCountries.stream().map(dto ->
                    Country.builder()
                            .iso_3166_1(dto.iso_3166_1())
                            .translations(dto.translations())
                            .build()
                ).toList();
    }

    public List<Language> languageMapping(List<LanguageImported> importedLanguages) {
        return importedLanguages.stream().map(dto -> {
            Map<String, String> translations = new HashMap<>();
            translations.put("en-EN", dto.english_name());
            return Language.builder()
                    .iso_639_1(dto.iso_639_1())
                    .translations(translations)
                    .build();
        }).toList();
    }

    private String localeMapping(String language) {
        return switch (language) {
            case "en" -> "en-EN";
            case "es" -> "es-ES";
            case "fr" -> "fr-FR";
            case "de" -> "de-DE";
            case "ru" -> "ru-RU";
            default -> null;
        };
    }
}
