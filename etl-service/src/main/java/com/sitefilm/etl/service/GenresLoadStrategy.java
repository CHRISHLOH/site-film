package com.sitefilm.etl.service;

import com.sitefilm.etl.configuration.TmdbClient;
import com.sitefilm.etl.dto.GenreDto;
import com.sitefilm.etl.dto.GenreResponseDto;
import com.sitefilm.etl.entity.directories.Genre;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Stream;

@Service
public class GenresLoadStrategy{

    private final TmdbClient tmdbClient;
    private static final List<String> languages = List.of("en", "ru", "fr", "de", "es");

    public GenresLoadStrategy(TmdbClient tmdbClient) {
        this.tmdbClient = tmdbClient;
    }


    public List<Genre> loadTmdb() {
        List<GenreDto> mergedDto =
                Stream.of(
                                languages.stream().map(
                                        locale -> {
                                            GenreResponseDto response = tmdbClient.getGenreMovies(locale);
                                            response.getGenres().forEach(genre -> {
                                                genre.setLanguage(locale);
                                            });
                                            return response;
                                        }
                                ),
                                languages.stream().map(
                                        locale -> {
                                            GenreResponseDto response = tmdbClient.getGenreSeries(locale);
                                            response.getGenres().forEach(genre -> {
                                                genre.setLanguage(locale);
                                            });
                                            return response;
                                        }
                                )
                        )
                        .flatMap(s -> s)
                        .flatMap(r -> r.getGenres().stream())
                        .toList();

        Map<Integer, Genre> finalMap = new HashMap<>();


        for (GenreDto dto : mergedDto) {
            finalMap
                    .computeIfAbsent(dto.getExternal_id(), extId -> {
                        Genre g = new Genre();
                        g.setExternalId(extId);
                        return g;
                    })
                    .getTranslations()
                    .put(dto.getLanguage(), dto.getName());
        }

        return finalMap.values().stream().toList();
    }
}
