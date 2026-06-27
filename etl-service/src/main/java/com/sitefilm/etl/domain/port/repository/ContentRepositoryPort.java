package com.sitefilm.etl.domain.port.repository;

import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.domain.model.content.DataContentTranslation;

import java.util.List;

public interface ContentRepositoryPort {
    Long saveContent(Content content);
    void saveTranslations(List<DataContentTranslation> translations, Long contentId);
    void saveOneTranslation(DataContentTranslation translation, Long contentId);
}
