package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.*;
import com.sitefilm.etl.dto.core.movie.MovieDetailsDto;
import com.sitefilm.etl.dto.core.person.PersonsInMovieDto;
import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.enums.ContentType;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class ContentAggregateFactory {
    private final MovieAggregator movieAggregator;
    private final PersonAggregator  personAggregator;
    private final RelationshipsAggregator relationshipsAggregator;

    public ContentAggregateFactory(MovieAggregator movieAggregator, PersonAggregator personAggregator, RelationshipsAggregator relationshipsAggregator)
    {
        this.movieAggregator = movieAggregator;
        this.personAggregator = personAggregator;
        this.relationshipsAggregator = relationshipsAggregator;
    }

    public ContentAggregateDto aggregateContent(MovieDetailsDto movieDetails, PersonsInMovieDto personsCast, DictionariesDto dictionaries) {
        MovieAggregateDto movieAggregateDto = movieAggregator.aggregate(movieDetails);
        List<PersonAggregateDto> personAggregateDtoList = personAggregator.aggregate(personsCast);
        Content content = new Content();
            content.setOriginalTitle(movieDetails.getOriginalTitle());
            content.setContentType(ContentType.MOVIE);
            content.setPosterUrl(null);
            content.setReleaseDate(movieDetails.getReleaseDate());
            content.setStatus(movieDetails.getStatus());
            content.setAgeRating(null);
            content.setBudget(movieDetails.getBudget());
            content.setBoxOffice(movieDetails.getRevenue());

        movieAggregateDto.movieDetail().setContent(content);
        movieAggregateDto.movieTranslations().forEach(
                contentTranslation -> contentTranslation.setContent(content)
        );
        RelationshipsForDataSaveDto relationships = relationshipsAggregator.aggregate(content, movieDetails, dictionaries, personAggregateDtoList);

        return new ContentAggregateDto(
                content,
                movieAggregateDto,
                personAggregateDtoList,
                dictionaries,
                relationships
        );
    }
}
