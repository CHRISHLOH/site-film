package com.sitefilm.etl.application.mapper.tmdb;

import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedMovie;
import com.sitefilm.etl.domain.model.content.MovieDetails;
import org.springframework.stereotype.Component;

import java.util.Collections;

@Component
public class ContentMovieMapper implements ContentMapper<ImportedMovie> {

    public Content aggregateToDomain(ImportedMovie importedMovie) {
        return Content.builder()
                .originalTitle(importedMovie.getOriginalTitle())
                .contentType(importedMovie.getContentType())
                .status(importedMovie.getStatus())
                .ageRating(importedMovie.getAgeRating())
                .externalId(importedMovie.getExternalId())
                .source(importedMovie.getSource())
                .translations(importedMovie.getTranslation())
                .genres(Collections.emptyList())
                .countries(Collections.emptyList())
                .spokenLanguages(Collections.emptyList())
                .details(movieDetailsMapping(importedMovie))
                .build();
    }

    private MovieDetails movieDetailsMapping(ImportedMovie importedMovie) {
        MovieDetails movieDetails = new MovieDetails();
        movieDetails.setContentId(null);
        movieDetails.setBudget(importedMovie.getBudget());
        movieDetails.setBoxOffice(importedMovie.getBoxOffice());
        movieDetails.setDuration(importedMovie.getDuration());
        return movieDetails;
    }
}