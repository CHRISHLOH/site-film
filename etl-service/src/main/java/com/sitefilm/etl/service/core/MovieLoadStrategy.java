package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.ContentAggregateDto;
import com.sitefilm.etl.dto.DictionariesDto;
import com.sitefilm.etl.dto.MovieAggregateResult;
import com.sitefilm.etl.dto.core.ContentResponse;
import com.sitefilm.etl.dto.core.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.dto.core.person.PersonsInMovieResponseDto;
import com.sitefilm.etl.entity.enums.ContentType;
import com.sitefilm.etl.service.core.dto.CommonAggregateData;
import com.sitefilm.etl.service.core.dto.MovieDetailsPersistDto;
import org.springframework.stereotype.Component;

@Component
public class MovieLoadStrategy implements ContentLoadStrategy<MovieDetailsResponseDto>{
    private final static ContentType contentType = ContentType.MOVIE;
    private final CoreTmdbClient tmdbClient;
    private final CommonAggregator commonAggregator;
    private final MovieDetailsAggregator movieDetailsAggregator;

    public MovieLoadStrategy(CoreTmdbClient tmdbClient, CommonAggregator commonAggregator, MovieDetailsAggregator movieDetailsAggregator) {
        this.tmdbClient = tmdbClient;
        this.commonAggregator = commonAggregator;
        this.movieDetailsAggregator = movieDetailsAggregator;
    }

    @Override
    public ContentType supportedType() {
        return contentType;
    }

    @Override
    public MovieDetailsResponseDto loadDetails(Long externalId) {
        return tmdbClient.loadMovieDetails(externalId);
    }

    @Override
    public ContentAggregateDto aggregate(MovieDetailsResponseDto details, PersonsInMovieResponseDto cast, DictionariesDto dict) {
        CommonAggregateData data = commonAggregator.aggregateContent(details, cast, dict);
        MovieDetailsPersistDto persistDto = movieDetailsAggregator.aggregateMovieDetails(details);
        return new MovieAggregateResult(
                data.content(),
                data.contentTranslations(),
                data.persons(),
                data.dictionariesDto(),
                data.relationships(),
                persistDto
        );
    }
}
