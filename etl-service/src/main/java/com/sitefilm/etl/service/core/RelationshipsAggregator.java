package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.dto.PersonAggregateDto;
import com.sitefilm.etl.dto.core.RelationshipsCountryDto;
import com.sitefilm.etl.dto.core.movie.MovieDetailsDto;
import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.content.relationship.ContentCountry;
import com.sitefilm.etl.entity.content.relationship.ContentGenre;
import com.sitefilm.etl.entity.content.relationship.ContentPerson;
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


    public RelationshipsForDataSaveDto aggregate(Content content, MovieDetailsDto movieDetailsDto, DictionariesDto dictionaries, List<PersonAggregateDto> persons) {
        List<ContentCountry> contentCountries = mappingContentCountry(dictionaries, content,  movieDetailsDto);
        List<ContentGenre> contentGenres = mappingContentGenre(dictionaries, content, movieDetailsDto);
        List<ContentPerson> contentPerson = mappingContentPerson(content, persons, dictionaries);
        return new RelationshipsForDataSaveDto(contentCountries, contentGenres, contentPerson);
    }

    private List<ContentCountry> mappingContentCountry(DictionariesDto dictionaries, Content content, MovieDetailsDto movieDetailsDto) {
        Map<String, Country> countriesByIso = dictionaries.countries().stream()
                .collect(Collectors.toMap(
                        Country::getIsoCode,
                        Function.identity()
                ));
        List<ContentCountry> result = new ArrayList<>();

        for (RelationshipsCountryDto dto : movieDetailsDto.getCountries()) {
            Country country = countriesByIso.get(dto.iso3166_1());
            ContentCountry contentCountry = new ContentCountry();
            contentCountry.setContent(content);
            contentCountry.setCountry(country);
            result.add(contentCountry);
        }
        return result;
    }

    private List<ContentGenre> mappingContentGenre(DictionariesDto dictionaries, Content content, MovieDetailsDto movieDetailsDto) {
        Map<Integer, Genre> genresById = dictionaries.genres().stream()
                .collect(Collectors.toMap(
                        Genre::getExternalId,
                        Function.identity()
                ));
        List<ContentGenre> result = new ArrayList<>();
        Short displayOrder = 1;
        for (Integer id : movieDetailsDto.getGenreIdList()){
            Genre genre = genresById.get(id);
            ContentGenre contentGenre = new ContentGenre();
            contentGenre.setContent(content);
            contentGenre.setGenre(genre);
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
                    contentPerson.setPerson(person.person());
                    contentPerson.setCareer(dictionaries.careers().stream()
                            .filter(career -> career.getCareer().equals(roleInMovie.getJob()))
                            .findFirst()
                            .orElseThrow());
                    contentPerson.setCharacterName(roleInMovie.getCharacter());
                    contentPerson.setDisplayOrderInContent(roleInMovie.getOrder());
                    result.add(contentPerson);
                }));
        return result;
    }
}
