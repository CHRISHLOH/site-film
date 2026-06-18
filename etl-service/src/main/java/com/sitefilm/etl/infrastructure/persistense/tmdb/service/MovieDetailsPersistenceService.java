package com.sitefilm.etl.infrastructure.persistense.tmdb.service;

import com.sitefilm.etl.domain.model.content.Details;
import com.sitefilm.etl.domain.model.content.MovieDetails;
import com.sitefilm.etl.domain.model.content.enums.ContentType;
import com.sitefilm.etl.infrastructure.persistense.tmdb.MovieRepositoryAdapter;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordFactory;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordsRepository;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

@Service
public class MovieDetailsPersistenceService implements ContentDetailsPersistenceService {
    private final MovieRepositoryAdapter movieRepository;
    private final FailedRecordsRepository failureRecordsRepository;
    private final FailedRecordFactory failedRecordFactory;

    public MovieDetailsPersistenceService(MovieRepositoryAdapter movieRepository, FailedRecordsRepository failureRecordsRepository, FailedRecordFactory failedRecordFactory) {
        this.movieRepository = movieRepository;
        this.failureRecordsRepository = failureRecordsRepository;
        this.failedRecordFactory = failedRecordFactory;
    }

    @Override
    public ContentType supports() {
        return ContentType.MOVIE;
    }

    @Override
    public void saveDetails(Details details, Long contentId, Long externalId) {
        MovieDetails movieDetails = (MovieDetails) details;
        try {
            movieRepository.saveDetails(movieDetails, contentId);
        } catch (DataIntegrityViolationException e) {
            failureRecordsRepository.saveFailedRecord(
                    failedRecordFactory.getSaveDetailsFailedRecord(movieDetails, externalId, e)
            );
            MovieDetails nullMovieDetails = new MovieDetails(
                    contentId,
                    null,
                    null,
                    null,
                    null
            );
            movieRepository.saveDetails(nullMovieDetails, contentId);
        }
    }
}
