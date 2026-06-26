package com.sitefilm.etl.application.mapper.tmdb;

import com.sitefilm.etl.domain.model.content.MovieDetails;
import com.sitefilm.etl.domain.model.content.enums.LoadContentType;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedMovie;
import org.springframework.stereotype.Component;

@Component
public class MovieDetailsMapper implements DetailsMapper<ImportedMovie, MovieDetails>{
    private static final LoadContentType LOAD_CONTENT_TYPE = LoadContentType.TMDB_MOVIE;

    @Override
    public LoadContentType getLoadContentType() {
        return LOAD_CONTENT_TYPE;
    }

    @Override
    public MovieDetails details(ImportedMovie importedMovie) {
        MovieDetails movieDetails = new MovieDetails();
        movieDetails.setContentId(null);
        movieDetails.setBudget(importedMovie.getBudget());
        movieDetails.setBoxOffice(importedMovie.getBoxOffice());
        movieDetails.setDuration(importedMovie.getDuration());
        return movieDetails;
    }
}
