package com.sitefilm.etl.service.dictionaries;

import com.sitefilm.etl.configuration.client.DictionariesTmdbClient;
import com.sitefilm.etl.dto.dictionaries.GenreDto;
import com.sitefilm.etl.dto.dictionaries.GenreResponseDto;
import com.sitefilm.etl.entity.directories.Genre;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Stream;

@Service
public class GenresLoadStrategy{

    private final DictionariesTmdbClient dictionariesTmdbClient;
    private static final Set<String> languages = Set.of("en", "ru", "fr", "de", "es");

    public GenresLoadStrategy(DictionariesTmdbClient dictionariesTmdbClient) {
        this.dictionariesTmdbClient = dictionariesTmdbClient;
    }


    public List<Genre> loadTmdb() {
        List<GenreDto> mergedDto =
                Stream.of(
                                languages.stream().map(
                                        locale -> {
                                            GenreResponseDto response = dictionariesTmdbClient.getGenreMovies(locale);
                                            response.getGenres().forEach(genre -> genre.setLanguage(locale));
                                            return response;
                                        }
                                ),
                                languages.stream().map(
                                        locale -> {
                                            GenreResponseDto response = dictionariesTmdbClient.getGenreSeries(locale);
                                            response.getGenres().forEach(genre -> genre.setLanguage(locale));
                                            return response;
                                        }
                                )
                        )
                        .flatMap(s -> s)
                        .flatMap(r -> r.getGenres().stream())
                        .toList();

        Map<Long, Genre> finalMap = new HashMap<>();

        for (GenreDto dto : mergedDto) {
            finalMap
                    .computeIfAbsent(dto.getExternal_id(), extId -> {
                        Genre g = new Genre();
                        g.setExternalId(extId);
                        g.setTranslations(new HashMap<>());
                        return g;
                    })
                    .getTranslations()
                    .put(localeMapping(dto.getLanguage()), dto.getName());
        }
        return new ArrayList<>(finalMap.values());
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
