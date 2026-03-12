package com.sitefilm.etl.infrastructure.provider.tmdb.adapter;

import com.sitefilm.etl.domain.model.CareerImported;
import com.sitefilm.etl.domain.model.CountryImported;
import com.sitefilm.etl.domain.model.GenreImported;
import com.sitefilm.etl.domain.model.LanguageImported;
import com.sitefilm.etl.domain.port.api.DictionariesProviderPort;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.dictionaries.CareerResponseDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.dictionaries.CountryResponseDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.dictionaries.GenreResponseDto;
import com.sitefilm.etl.domain.model.enums.CareerType;
import com.sitefilm.etl.infrastructure.provider.tmdb.client.DictionariesTmdbClient;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.dictionaries.LanguageResponseDto;
import org.springframework.stereotype.Component;

import java.util.*;
import java.util.stream.Stream;

@Component
public class TmdbDictionariesAdapter implements DictionariesProviderPort {
    private final DictionariesTmdbClient dictionariesTmdbClient;
    private static final Set<String> LOCALES = Set.of("ru-RU", "en-US", "fr-FR", "es-ES", "de-DE");
    private static final Set<String> LANGUAGES = Set.of("en", "ru", "fr", "de", "es");

    public TmdbDictionariesAdapter(DictionariesTmdbClient dictionariesTmdbClient) {
        this.dictionariesTmdbClient = dictionariesTmdbClient;
    }

    @Override
    public List<GenreImported> fetchGenres() {
        return Stream.of(
                        LANGUAGES.stream().map(
                                locale -> {
                                    GenreResponseDto response = dictionariesTmdbClient.getGenreMovies(locale);
                                    response.getGenres().forEach(genre -> genre.setLanguage(locale));
                                    return response;
                                }
                        ),
                        LANGUAGES.stream().map(
                                locale -> {
                                    GenreResponseDto response = dictionariesTmdbClient.getGenreSeries(locale);
                                    response.getGenres().forEach(genre -> genre.setLanguage(locale));
                                    return response;
                                }
                        )
                )
                .flatMap(s -> s)
                .flatMap(r -> r.getGenres().stream())
                .map(genreDto -> new GenreImported(
                        genreDto.getExternal_id(),
                        genreDto.getName(),
                        genreDto.getLanguage()
                ))
                .toList();
    }

    @Override
    public List<CareerImported> fetchCareers() {
        List<CareerResponseDto> careerResponseDtoList = dictionariesTmdbClient.getCareers();
        Set<String> seen = new HashSet<>();
        Set<CareerImported> result = new HashSet<>();
        for (CareerResponseDto dto : careerResponseDtoList) {
            CareerType type = CareerType.fromTmdb(dto.getDepartment());
            for (String job : dto.getJobs()) {
                String key = type.getId() + "|" + job;
                if (seen.add(key)) {
                    Map<String, String> translations = new HashMap<>();
                    translations.put("en-EN", job );
                    CareerImported career = new CareerImported(
                            type,
                            translations
                    );
                    result.add(career);
                }
            }
        }
        return result.stream().toList();
    }

    @Override
    public List<CountryImported> fetchCountries() {
        List<List<CountryResponseDto>> tmdbList = LOCALES.stream().map(locales -> {
            List<CountryResponseDto> countryResponseDtoList = dictionariesTmdbClient.getCountries(locales);
            countryResponseDtoList.forEach(countryResponseDto -> countryResponseDto.setLocale(locales));
            return countryResponseDtoList;
        }).toList();

        Map<String, CountryImported> finalMap= new HashMap<>();

        for(List<CountryResponseDto> countryResponseDtoList : tmdbList) {
            for(CountryResponseDto countryResponseDto : countryResponseDtoList) {
                finalMap.computeIfAbsent(countryResponseDto.getIso_3166_1(),
                        code -> new CountryImported(
                                code,
                                new HashMap<>()
                        )
                ).translations().put(countryResponseDto.getLocale(), countryResponseDto.getNativeName());
            }
        }
        return new ArrayList<>(finalMap.values());
    }

    @Override
    public List<LanguageImported> fetchLanguages() {
        List<LanguageResponseDto> languageResponseDtoList = dictionariesTmdbClient.getLanguages();
        return languageResponseDtoList.stream()
                .map(dto ->
                        new LanguageImported(
                                dto.getIso_639_1(),
                                dto.getEnglishName(),
                                dto.getName()))
                .toList();
    }
}
