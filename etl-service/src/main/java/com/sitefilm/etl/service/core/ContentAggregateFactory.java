package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.*;
import com.sitefilm.etl.dto.core.RelationshipsData;
import com.sitefilm.etl.dto.core.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.dto.core.person.PersonsInMovieResponseDto;
import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.content.relationship.ContentTranslation;
import com.sitefilm.etl.entity.enums.ContentStatus;
import com.sitefilm.etl.entity.enums.ContentType;
import com.sitefilm.etl.entity.enums.Source;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ContentAggregateFactory {
    private final PersonAggregator  personAggregator;
    private final RelationshipsAggregator relationshipsAggregator;
    private final ContentTranslationMovieAggregator contentTranslationMovieAggregator;

    public ContentAggregateFactory(PersonAggregator personAggregator, RelationshipsAggregator relationshipsAggregator, ContentTranslationMovieAggregator contentTranslationMovieAggregator)
    {
        this.personAggregator = personAggregator;
        this.relationshipsAggregator = relationshipsAggregator;
        this.contentTranslationMovieAggregator = contentTranslationMovieAggregator;
    }

    public ContentAggregateDto aggregateContent(MovieDetailsResponseDto movieDetails, PersonsInMovieResponseDto personsCast, DictionariesDto dictionaries) {
        List<PersonAggregateDto> personAggregateDtoList = personAggregator.aggregate(personsCast);
        Content content = new Content();
            content.setOriginalTitle(movieDetails.getOriginalTitle());
            content.setContentType(ContentType.MOVIE);
            content.setPosterUrl(null);
            content.setReleaseDate(movieDetails.getReleaseDate());
            content.setStatus(ContentStatus.getByStatusName(movieDetails.getStatus()));
            content.setAgeRating(null);
            content.setBudget(movieDetails.getBudget());
            content.setBoxOffice(movieDetails.getRevenue());
            content.setExternalId(movieDetails.getExternalId());
            content.setSource(Source.TMDB);
            content.setDuration(movieDetails.getDuration());

        List<ContentTranslation> translations = contentTranslationMovieAggregator.aggregate(movieDetails);
        RelationshipsData relationshipsData = new RelationshipsData(movieDetails.getGenres(), movieDetails.getCountries(), movieDetails.getSpokenLanguages());


        RelationshipsForDataSaveDto relationships = relationshipsAggregator.aggregate(content, movieDetails, dictionaries, personAggregateDtoList);

        return new ContentAggregateDto(
                content,
                personAggregateDtoList,
                dictionaries,
                relationships
        );
    }
}
