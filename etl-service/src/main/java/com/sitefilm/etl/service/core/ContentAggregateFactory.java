package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.ContentAggregateDto;
import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.dto.MovieAggregateDto;
import com.sitefilm.etl.dto.PersonAggregateDto;
import com.sitefilm.etl.dto.core.movie.MovieDetailsDto;
import com.sitefilm.etl.dto.core.movie.ResponseMovieTranslationDto;
import com.sitefilm.etl.dto.core.person.PersonsCastDto;
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

    public ContentAggregateDto aggregateContent(MovieDetailsDto movieDetails, PersonsCastDto personsCast, DictionariesDto dictionaries) {
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
        relationshipsAggregator.aggregate(content, movieDetails, dictionaries);

        return new ContentAggregateDto(
                content,
                movieAggregateDto,
                personAggregateDtoList
        );
    }
}
