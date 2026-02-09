package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.dto.PersonAggregateDto;
import com.sitefilm.etl.dto.core.RelationshipsCountryDto;
import com.sitefilm.etl.dto.core.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.content.relationship.ContentCountry;
import com.sitefilm.etl.entity.content.relationship.ContentGenre;
import com.sitefilm.etl.entity.content.relationship.ContentPerson;
import com.sitefilm.etl.entity.directories.Career;
import com.sitefilm.etl.entity.directories.Country;
import com.sitefilm.etl.entity.directories.Genre;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

@Component
public class RelationshipsAggregator {


    public RelationshipsForDataSaveDto aggregate(Content content, MovieDetailsResponseDto movieDetailsResponseDto, DictionariesDto dictionaries, List<PersonAggregateDto> persons) {
        List<ContentCountry> contentCountries = mappingContentCountry(dictionaries, content, movieDetailsResponseDto);
        List<ContentGenre> contentGenres = mappingContentGenre(dictionaries, content, movieDetailsResponseDto);
        List<ContentPerson> contentPerson = mappingContentPerson(content, persons, dictionaries);
        return new RelationshipsForDataSaveDto(contentCountries, contentGenres, contentPerson);
    }

    private List<ContentCountry> mappingContentCountry(DictionariesDto dictionaries, Content content, MovieDetailsResponseDto movieDetailsResponseDto) {
        Map<String, Country> countriesByIso = dictionaries.countries().stream()
                .collect(Collectors.toMap(
                        Country::getIsoCode,
                        Function.identity()
                ));
        List<ContentCountry> result = new ArrayList<>();

        for (RelationshipsCountryDto dto : movieDetailsResponseDto.getCountries()) {
            Country country = countriesByIso.get(dto.iso3166_1());
            ContentCountry contentCountry = new ContentCountry();
            contentCountry.setContentId(content.getId());
            contentCountry.setCountryId(country.getId());
            result.add(contentCountry);
        }
        return result;
    }

    private List<ContentGenre> mappingContentGenre(DictionariesDto dictionaries, Content content, MovieDetailsResponseDto movieDetailsResponseDto) {
        Map<Integer, Genre> genresById = dictionaries.genres().stream()
                .collect(Collectors.toMap(
                        Genre::getExternalId,
                        Function.identity()
                ));
        List<ContentGenre> result = new ArrayList<>();
        Short displayOrder = 1;
        for (Integer id : movieDetailsResponseDto.getGenreIdList()){
            Genre genre = genresById.get(id);
            ContentGenre contentGenre = new ContentGenre();
            contentGenre.setContentId(content.getId());
            contentGenre.setGenreId(genre.getId());
            contentGenre.setDisplayOrder(displayOrder);
            result.add(contentGenre);
            displayOrder++;
        }
        return result;
    }

    private List<ContentPerson> mappingContentPerson(Content content, List<PersonAggregateDto> persons, DictionariesDto dictionaries) {
        List<ContentPerson> result = new ArrayList<>();
        persons.forEach(person -> person.personMovieData().forEach(roleInMovie -> {
                    ContentPerson contentPerson = new ContentPerson();
                    contentPerson.setContent(content);
                    contentPerson.setPersonId(person.person().getId());
                    contentPerson.setCareerId(dictionaries.careers().stream()
                            .filter(career -> career.getTranslations().containsValue(roleInMovie.getJob()))
                            .map(Career::getId)
                            .findFirst()
                            .orElseThrow());
                    contentPerson.setCharacterName(roleInMovie.getCharacter());
                    contentPerson.setDisplayOrderInContent(roleInMovie.getOrder());
                    result.add(contentPerson);
                }));
        return result;
    }
}
