package com.sitefilm.etl.application.collector;

import com.sitefilm.etl.domain.model.content.DataContentTranslation;
import com.sitefilm.etl.domain.model.person.DataPersonTranslation;
import com.sitefilm.etl.domain.model.translations.TranslationContentType;
import com.sitefilm.etl.domain.model.translations.TranslationProcess;
import com.sitefilm.etl.infrastructure.persistense.translation.TranslationsRepositoryAdapter;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class MissingTranslationProcessor {

    private final MissingTranslationCollector missingTranslationCollector;
    private final TranslationsRepositoryAdapter translationsRepositoryAdapter;

    public MissingTranslationProcessor(MissingTranslationCollector missingTranslationCollector, TranslationsRepositoryAdapter translationsRepositoryAdapter) {
        this.missingTranslationCollector = missingTranslationCollector;
        this.translationsRepositoryAdapter = translationsRepositoryAdapter;
    }

    public void saveMissingContentTranslations(List<DataContentTranslation> contentTranslations, Long contentId) {
        List<DataContentTranslatableField> translatableFields = contentTranslations.stream().map(DataContentTranslatableField::new).toList();
        List<TranslationProcess> tp = missingTranslationCollector.collectMissingTranslations(translatableFields, contentId, TranslationContentType.CONTENT);
        if(!tp.isEmpty()){
            translationsRepositoryAdapter.saveProcess(tp);
        }
    }

    public void saveMissingPersonTranslations(List<DataPersonTranslation> personTranslationsTranslations, Long personId) {
        List<DataPersonTranslatableField> translatableFields = personTranslationsTranslations.stream().map(DataPersonTranslatableField::new).toList();
        List<TranslationProcess> tp = missingTranslationCollector.collectMissingTranslations(translatableFields, personId, TranslationContentType.PERSON);
        if(!tp.isEmpty()){
            translationsRepositoryAdapter.saveProcess(tp);
        }

    }
}
