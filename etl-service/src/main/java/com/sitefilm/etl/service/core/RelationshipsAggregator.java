package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.dto.core.RelationshipsCountryDto;
import com.sitefilm.etl.dto.core.RelationshipsData;
import com.sitefilm.etl.dto.core.movie.MovieDetailsDto;
import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.content.relationship.ContentCountry;
import com.sitefilm.etl.entity.content.relationship.ContentGenre;
import com.sitefilm.etl.entity.content.relationship.ContentLanguage;
import com.sitefilm.etl.entity.content.relationship.ContentPerson;
import com.sitefilm.etl.entity.directories.Country;
import com.sitefilm.etl.entity.directories.Genre;
import com.sitefilm.etl.entity.directories.Language;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;
import java.util.stream.Stream;

@Component
public class RelationshipsAggregator {


    public RelationshipsData aggregate(Content content, MovieDetailsDto movieDetailsDto, DictionariesDto dictionaries) {
        List<ContentCountry> contentCountries = mappingContentCountry(dictionaries, content,  movieDetailsDto);
        List<ContentGenre> contentGenres = mappingContentGenre(dictionaries, content, movieDetailsDto);
        ContentLanguage contentLanguage = new ContentLanguage();
        ContentPerson contentPerson = new ContentPerson();


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


}
