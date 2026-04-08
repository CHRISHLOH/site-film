package com.sitefilm.etl.application.collector;

import com.sitefilm.etl.domain.model.translations.TranslationContentType;
import com.sitefilm.etl.domain.model.translations.TranslationProcess;
import com.sitefilm.etl.domain.model.translations.TranslationStatus;
import org.springframework.stereotype.Component;

import java.util.*;
import java.util.stream.Collectors;

@Component
public class MissingTranslationCollector {
    private static final List<String> LOCALES = List.of("ru-RU", "fr-FR", "es-ES", "de-DE", "en-US");
    private static final TranslationStatus STATUS = TranslationStatus.RAW;

    public List<TranslationProcess> collectMissingTranslations(List<? extends TranslatableFieldProvider> contentTranslations, Long entityId, TranslationContentType contentType) {
        List<TranslationProcess> result = new ArrayList<>();
        Map<String, TranslatableFieldProvider> translationsByLocale = contentTranslations.stream().collect(Collectors.toMap(TranslatableFieldProvider::locale, t -> t));
        Map<String, OriginalTranslationInfo> originalInfo = findOriginal(translationsByLocale);
        List<String> fields = getFieldNames(contentTranslations);
        LOCALES.forEach(locale -> {
            TranslatableFieldProvider translatableFieldProvider = translationsByLocale.get(locale);
            if (translatableFieldProvider != null) {
                translatableFieldProvider.fields().forEach((field, value) -> {
                    if (value == null) {
                        result.add(new TranslationProcess(
                                null,
                                entityId,
                                contentType,
                                field,
                                originalInfo.get(field).value(),
                                null,
                                originalInfo.get(field).locale(),
                                locale,
                                STATUS));
                    }
                });
            } else {
                fields.forEach(field -> result.add(new TranslationProcess(
                        null,
                        entityId,
                        contentType,
                        field,
                        originalInfo.get(field).value(),
                        null, originalInfo.get(field).locale(),
                        locale,
                        STATUS)));
            }
        });
        return result;
    }

    private Map<String, OriginalTranslationInfo> findOriginal(Map<String, TranslatableFieldProvider> translationsByLocale) {
        TranslatableFieldProvider tfp = translationsByLocale.get("en-US");
        Map<String, OriginalTranslationInfo> result = new HashMap<>();
        if (tfp != null) {
            tfp.fields().forEach((field, value) -> {
                if (value != null) {
                    result.put(field, new OriginalTranslationInfo(value, "en-US"));
                } else {
                    result.put(field, null);
                }
            });
        }
        result.forEach((field, value) -> {
            if (value == null) {
                for (String locale : LOCALES) {
                    TranslatableFieldProvider otherTfp = translationsByLocale.get(locale);
                    if (otherTfp != null) {
                        String otherValue = otherTfp.fields().get(field);
                        result.put(field, new OriginalTranslationInfo(otherValue, locale));
                        break;
                    }
                }
            }
        });
        return result;
    }

    private List<String> getFieldNames(List<? extends TranslatableFieldProvider> list) {
        if (list.isEmpty()) return List.of();
        return new ArrayList<>(list.getFirst().fields().keySet());
    }
}
