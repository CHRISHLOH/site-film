package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.core.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.service.core.dto.MovieDetailsPersistDto;
import org.springframework.stereotype.Component;

@Component
public class MovieDetailsAggregator {
    public MovieDetailsPersistDto aggregateMovieDetails(MovieDetailsResponseDto details) {
        return new MovieDetailsPersistDto(
                details.getExternalId(),
                details.getBudget(),
                details.getRevenue(),
                details.getDuration()
        );
    }
}
