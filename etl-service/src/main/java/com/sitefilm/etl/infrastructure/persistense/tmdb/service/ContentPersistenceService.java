package com.sitefilm.etl.infrastructure.persistense.tmdb.service;

import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.domain.model.content.DataContentTranslation;
import com.sitefilm.etl.domain.port.repository.ContentRepositoryPort;
import com.sitefilm.etl.infrastructure.persistense.ContentDetailsPersistenceFactory;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordFactory;
import com.sitefilm.etl.infrastructure.persistense.tmdb.fail.FailedRecordsRepository;
import com.sitefilm.etl.infrastructure.persistense.tmdb.service.fallback.ContentFallbackService;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ContentPersistenceService {
    private final ContentDetailsPersistenceFactory contentFactory;
    private final ContentFallbackService fallbackService;

    public ContentPersistenceService(ContentDetailsPersistenceFactory contentFactory,
                                     ContentFallbackService fallbackService) {
        this.contentFactory = contentFactory;
        this.fallbackService = fallbackService;
    }

    @Transactional
    public Long save(Content content) {
        Long contentId = fallbackService.saveContentSafely(content);
        ContentDetailsPersistenceService service = contentFactory.getFor(content.getContentType());
        service.saveDetails(content.getDetails(), contentId, content.getExternalId());
        fallbackService.saveTranslationsSafely(content.getTranslations(), contentId, content.getExternalId());
        return contentId;
    }
}
