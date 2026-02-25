package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.*;
import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.person.Person;
import com.sitefilm.etl.service.core.dto.*;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class DataBatchAggregator {

    public PersistentBatchDto aggregate(List<ContentAggregateDto> contentAggregateDto){
        List<Content> contentList = new ArrayList<>();
        List<Person> personList = new ArrayList<>();
        List<ContentCountryPersistDto> contentCountries = new ArrayList<>();
        List<ContentGenrePersistDto> contentGenres = new ArrayList<>();
        List<ContentPersonPersistDto> contentPerson = new  ArrayList<>();
        List<DataPersonTranslation> personTranslations = new ArrayList<>();
        List<DataContentTranslation> contentTranslations = new ArrayList<>();
        List<MovieDetailsPersistDto> movieDetails = new ArrayList<>();
        List<SeriesDetailsPersistDto> seriesDetails = new ArrayList<>();


        contentAggregateDto.forEach(content -> {
                    contentList.add(content.content());
                    contentTranslations.addAll(content.contentTranslations());
                    content.persons().forEach(person -> personList.add(person.person()));
                    content.persons().forEach(person -> personTranslations.addAll(person.personTranslation()));
                    contentCountries.addAll(content.relationships().contentCountries());
                    contentGenres.addAll(content.relationships().contentGenres());
                    contentPerson.addAll(content.relationships().contentPerson());
                    switch (content) {
                        if (content instanceof MovieAggregateResult m) {
                            movieDetails.add(m.persistDto());
                        } else if (content instanceof SeriesAggregateResult s) {
                            seriesDetails.add(s.seriesDetails());
                        }
                    }
                }
        );

        return new PersistentBatchDto(
                contentList,
                contentTranslations,
                personList,
                personTranslations,
                contentCountries,
                contentGenres,
                contentPerson,
                movieDetails,
                seriesDetails
        );
    }
}
