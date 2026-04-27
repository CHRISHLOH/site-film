package com.sitefilm.etl.infrastructure.persistense.tmdb.service;

import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.domain.model.content.DataContentTranslation;
import com.sitefilm.etl.domain.model.content.Details;
import com.sitefilm.etl.domain.model.content.MovieDetails;
import com.sitefilm.etl.infrastructure.persistense.tmdb.FailedRecordFactory;
import com.sitefilm.etl.infrastructure.persistense.tmdb.FailedRecordsRepository;
import com.sitefilm.etl.infrastructure.persistense.tmdb.MovieRepositoryAdapter;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ContentPersistenceService {
    private final MovieRepositoryAdapter movieRepository;
    private final FailedRecordsRepository failureRecordsRepository;
    private final FailedRecordFactory failedRecordFactory;

    public ContentPersistenceService(MovieRepositoryAdapter movieRepository, FailedRecordsRepository failureRecordsRepository, FailedRecordFactory failedRecordFactory) {
        this.movieRepository = movieRepository;
        this.failureRecordsRepository = failureRecordsRepository;
        this.failedRecordFactory = failedRecordFactory;
    }

    @Transactional
    public Long save(Content content) {
        Long contentId = saveContentSafely(content);
        saveDetailsSafely(content.getDetails(), contentId, content.getExternalId());
        saveTranslationsSafely(content.getTranslations(), contentId, content.getExternalId());
        return contentId;
    }

    private void saveDetailsSafely(Details details, Long contentId, Long externalId) {
        MovieDetails movieDetails = (MovieDetails) details;
        try {
            movieRepository.saveDetails(movieDetails, contentId);
        } catch (DataIntegrityViolationException e) {
            failureRecordsRepository.saveFailedRecord(
                    failedRecordFactory.getSaveDetailsFailedRecord(movieDetails, externalId, e)
            );
            MovieDetails nullMovieDetails = new  MovieDetails(
                    contentId,
                    null,
                    null,
                    null,
                    null
            );
            movieRepository.saveDetails(nullMovieDetails, contentId);
        }
    }

    private void saveTranslationsSafely(List<DataContentTranslation> translations, Long contentId, Long externalId) {
        try {
            movieRepository.saveTranslations(translations, contentId);
        } catch (DataIntegrityViolationException e) {
            for (DataContentTranslation translation : translations) {
                try {
                    movieRepository.saveOneTranslation(translation, contentId);
                } catch (DataIntegrityViolationException ex) {
                    DataContentTranslation dataContentTranslation = new DataContentTranslation(
                            translation.locale(),
                            null,
                            null,
                            null
                    );
                    movieRepository.saveOneTranslation(dataContentTranslation, contentId);
                    failureRecordsRepository.saveFailedRecord(
                            failedRecordFactory.getSaveTranslationFailedRecord(translation, externalId, ex)
                    );
                }
            }
        }
    }

    private Long saveContentSafely(Content content) {
        try {
            return movieRepository.saveContent(content);
        } catch (DataIntegrityViolationException e) {
            failureRecordsRepository.saveFailedRecord(
                    failedRecordFactory.getSaveContentFailedRecord(content, e)
            );
            throw e;
        }
    }
}
