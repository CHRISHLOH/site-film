package com.sitefilm.etl.service.core.dto;

import com.sitefilm.etl.dto.DataContentTranslation;
import com.sitefilm.etl.dto.DataPersonTranslation;
import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.person.Person;

import java.util.List;

public record PersistentBatchDto(
    List<Content> contentList,
    List<DataContentTranslation> contentTranslationList,
    List<Person> personList,
    List<DataPersonTranslation> personTranslationList,
    List<ContentCountryPersistDto> contentCountries,
    List<ContentGenrePersistDto> contentGenres,
    List<ContentPersonPersistDto> contentPerson,
    List<MovieDetailsPersistDto> movieDetails,    // добавил
    List<SeriesDetailsPersistDto> seriesDetails
) {
}
