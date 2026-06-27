package com.sitefilm.etl.infrastructure.persistense.tmdb.service;

import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.domain.model.content.DataContentTranslation;
import com.sitefilm.etl.domain.port.repository.ContentRepositoryPort;
import com.sitefilm.etl.infrastructure.persistense.ContentDetailsPersistenceFactory;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordFactory;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordsRepository;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContentPersistenceService {
    private final ContentDetailsPersistenceFactory contentFactory;
    private final ContentRepositoryPort contentRepository;
    private final FailedRecordsRepository failureRecordsRepository;
    private final FailedRecordFactory failedRecordFactory;

    public ContentPersistenceService(ContentDetailsPersistenceFactory contentFactory, ContentRepositoryPort contentRepository, FailedRecordsRepository failureRecordsRepository, FailedRecordFactory failedRecordFactory) {
        this.contentFactory = contentFactory;
        this.contentRepository = contentRepository;
        this.failureRecordsRepository = failureRecordsRepository;
        this.failedRecordFactory = failedRecordFactory;
    }

    public Long save(Content content) {
        Long contentId = saveContentSafely(content);
        ContentDetailsPersistenceService service = contentFactory.getFor(content.getContentType());
        service.saveDetails(content.getDetails(), contentId, content.getExternalId());
        saveTranslationsSafely(content.getTranslations(), contentId, content.getExternalId());
        return contentId;
    }

    private void saveTranslationsSafely(List<DataContentTranslation> translations, Long contentId, Long externalId) {
        try {
            contentRepository.saveTranslations(translations, contentId);
        } catch (DataIntegrityViolationException e) {
            for (DataContentTranslation translation : translations) {
                try {
                    contentRepository.saveOneTranslation(translation, contentId);
                } catch (DataIntegrityViolationException ex) {
                    DataContentTranslation dataContentTranslation = new DataContentTranslation(
                            translation.locale(),
                            null,
                            null,
                            null
                    );
                    contentRepository.saveOneTranslation(dataContentTranslation, contentId);
                    failureRecordsRepository.saveFailedRecord(
                            failedRecordFactory.getSaveTranslationFailedRecord(translation, externalId, ex)
                    );
                }
            }
        }
    }

    private Long saveContentSafely(Content content) {
        try {
            return contentRepository.saveContent(content);
        } catch (DataIntegrityViolationException e) {
            failureRecordsRepository.saveFailedRecord(
                    failedRecordFactory.getSaveContentFailedRecord(content, e)
            );
            throw e;
        }
    }
}
