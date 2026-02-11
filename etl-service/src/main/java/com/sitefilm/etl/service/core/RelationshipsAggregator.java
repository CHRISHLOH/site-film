package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.dto.PersonAggregateDto;
import com.sitefilm.etl.dto.core.RelationshipsCountryDto;
import com.sitefilm.etl.dto.core.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.directories.Career;
import com.sitefilm.etl.entity.directories.Country;
import com.sitefilm.etl.entity.directories.Genre;
import com.sitefilm.etl.service.core.dto.ContentCountryPersistDto;
import com.sitefilm.etl.service.core.dto.ContentGenrePersistDto;
import com.sitefilm.etl.service.core.dto.ContentPersonPersistDto;
import com.sitefilm.etl.service.core.dto.RelationshipsForDataSaveDto;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

@Component
public class RelationshipsAggregator {

    public RelationshipsForDataSaveDto aggregate(Content content, MovieDetailsResponseDto movieDetailsResponseDto, DictionariesDto dictionaries, List<PersonAggregateDto> persons) {
        List<ContentCountryPersistDto> contentCountries = mappingContentCountryPersistDto(dictionaries, content, movieDetailsResponseDto);
        List<ContentGenrePersistDto> contentGenre = mappingContentGenrePersistDto(dictionaries, content, movieDetailsResponseDto);
        List<ContentPersonPersistDto> contentPerson = mappingContentPersonPersistDto(content, persons, dictionaries);
        return new RelationshipsForDataSaveDto(contentCountries, contentGenre, contentPerson);
    }

    private List<ContentCountryPersistDto> mappingContentCountryPersistDto(DictionariesDto dictionaries, Content content, MovieDetailsResponseDto movieDetailsResponseDto) {
        Map<String, Country> countriesByIso = dictionaries.countries().stream()
                .collect(Collectors.toMap(
                        Country::getIsoCode,
                        Function.identity()
                ));
        List<ContentCountryPersistDto> result = new ArrayList<>();

        for (RelationshipsCountryDto dto : movieDetailsResponseDto.getCountries()) {
            Country country = countriesByIso.get(dto.iso3166_1());
            ContentCountryPersistDto contentCountryPersistDto = new ContentCountryPersistDto(
                    content.getExternalId(),
                    country.getId()
            );
            result.add(contentCountryPersistDto);
        }
        return result;
    }

    private List<ContentGenrePersistDto> mappingContentGenrePersistDto(DictionariesDto dictionaries, Content content, MovieDetailsResponseDto movieDetailsResponseDto) {
        Map<Integer, Genre> genresById = dictionaries.genres().stream()
                .collect(Collectors.toMap(
                        Genre::getExternalId,
                        Function.identity()
                ));
        List<ContentGenrePersistDto> result = new ArrayList<>();
        Short displayOrder = 1;
        List<Integer> genresId = new ArrayList<>();
        movieDetailsResponseDto.getGenres().forEach(genreDto -> genresId.add(genreDto.getExternal_id()));
        for (Integer id : genresId) {
            Genre genre = genresById.get(id);
            ContentGenrePersistDto contentGenrePersistDto = new ContentGenrePersistDto(
                    content.getExternalId(),
                    genre.getId(),
                    displayOrder  
            );
            result.add(contentGenrePersistDto);
            displayOrder++;
        }
        return result;
    }

    private List<ContentPersonPersistDto> mappingContentPersonPersistDto(Content content, List<PersonAggregateDto> persons, DictionariesDto dictionaries) {
        List<ContentPersonPersistDto> result = new ArrayList<>();
        persons.forEach(person -> person.personMovieData().forEach(roleInMovie -> {
                    Long careerPersist = dictionaries.careers().stream()
                        .filter(career -> career.getTranslations().containsValue(roleInMovie.getJob()))
                        .map(Career::getId)
                        .findFirst()
                        .orElseThrow();
                    ContentPersonPersistDto contentPerson = new ContentPersonPersistDto(
                            content.getExternalId(),
                            person.person().getExternalId(),
                            careerPersist,
                            roleInMovie.getCharacter(),
                            roleInMovie.getOrder()
                    );
                    result.add(contentPerson);
                }));
        return result;
    }
}
