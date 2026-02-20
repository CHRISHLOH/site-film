package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.*;
import com.sitefilm.etl.dto.core.ContentResponse;
import com.sitefilm.etl.dto.core.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.dto.core.person.PersonsInMovieResponseDto;
import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.enums.ContentStatus;
import com.sitefilm.etl.entity.enums.ContentType;
import com.sitefilm.etl.entity.enums.Source;
import com.sitefilm.etl.service.core.dto.RelationshipsForDataSaveDto;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ContentAggregateFactory<T extends ContentResponse> {
    private final PersonAggregator  personAggregator;
    private final RelationshipsAggregator relationshipsAggregator;
    private final ContentTranslationMovieAggregator contentTranslationMovieAggregator;

    public ContentAggregateFactory(PersonAggregator personAggregator, RelationshipsAggregator relationshipsAggregator, ContentTranslationMovieAggregator contentTranslationMovieAggregator)
    {
        this.personAggregator = personAggregator;
        this.relationshipsAggregator = relationshipsAggregator;
        this.contentTranslationMovieAggregator = contentTranslationMovieAggregator;
    }

    public ContentAggregateDto aggregateContent(T movieDetails, PersonsInMovieResponseDto personsCast, DictionariesDto dictionaries) {
        List<PersonAggregateDto> personAggregateDtoList = personAggregator.aggregate(personsCast);
        Content content = new Content();
            content.setOriginalTitle(movieDetails.getOriginalTitle());
            content.setContentType(ContentType.MOVIE);
            content.setPosterUrl(null);
            content.setStatus(ContentStatus.getByStatusName(movieDetails.getStatus()));
            content.setAgeRating(null);
            content.setExternalId(movieDetails.getExternalId());
            content.setSource(Source.TMDB);
        List<DataContentTranslation> translations = contentTranslationMovieAggregator.aggregate(movieDetails, content.getExternalId());
        RelationshipsForDataSaveDto relationships = relationshipsAggregator.aggregate(content, movieDetails, dictionaries, personAggregateDtoList);
        return new ContentAggregateDto(
                content,
                translations,
                personAggregateDtoList,
                dictionaries,
                relationships
        );
    }

    private T  e(MovieDetailsResponseDto movieDetails) {
        // movieDetails.getDuration();
        return null;
    }
}
