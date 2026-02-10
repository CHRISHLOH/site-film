package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.ContentAggregateDto;
import com.sitefilm.etl.dto.DataContentTranslation;
import com.sitefilm.etl.dto.DataPersonTranslation;
import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.person.Person;
import com.sitefilm.etl.service.core.dto.ContentCountryPersistDto;
import com.sitefilm.etl.service.core.dto.ContentGenrePersistDto;
import com.sitefilm.etl.service.core.dto.ContentPersonPersistDto;
import com.sitefilm.etl.service.core.dto.PersistentBatchDto;
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

        contentAggregateDto.forEach(content -> {
                    contentList.add(content.content());
                    content.persons().forEach(person -> personList.add(person.person()));
                    content.persons().forEach(person-> personTranslations.addAll(person.personTranslation()));
                    contentCountries.addAll(content.relationships().contentCountries());
                    contentGenres.addAll(content.relationships().contentGenres());
                    contentPerson.addAll(content.relationships().contentPerson());
                }
        );
        return new PersistentBatchDto(
                contentList,
                contentTranslations,
                personList,
                personTranslations,
                contentCountries,
                contentGenres,
                contentPerson);
    }
}
