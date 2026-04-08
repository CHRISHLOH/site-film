package com.sitefilm.etl.domain.port.repository;

import com.sitefilm.etl.domain.model.translations.TranslationProcess;
import com.sitefilm.etl.domain.model.translations.TranslationStatus;

import java.util.List;

public interface TranslationRepositoryPort {
    List<TranslationProcess> findByTranslationStatus(TranslationStatus translationStatus);
}
