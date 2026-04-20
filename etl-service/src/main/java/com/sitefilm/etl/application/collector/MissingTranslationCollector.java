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
    private static final TranslationStatus RAW_STATUS = TranslationStatus.RAW;
    private static final TranslationStatus NULL_STATUS = TranslationStatus.NULL;

    public List<TranslationProcess> collectMissingTranslations(List<? extends TranslatableFieldProvider> contentTranslations, Long entityId, TranslationContentType contentType) {
        List<TranslationProcess> result = new ArrayList<>();
        Map<String, TranslatableFieldProvider> translationsByLocale = contentTranslations.stream().collect(Collectors.toMap(TranslatableFieldProvider::locale, t -> t));
        Map<String, OriginalTranslationInfo> originalInfo = findOriginal(translationsByLocale);
        LOCALES.forEach(locale -> {
            TranslatableFieldProvider translatableFieldProvider = translationsByLocale.get(locale);
            if (translatableFieldProvider != null) {
                translatableFieldProvider.fields().forEach((field, value) -> {
                    String origValue = originalInfo.get(field).value();
                    if (value == null && origValue != null) {
                        result.add(new TranslationProcess(
                                null,
                                entityId,
                                contentType,
                                field,
                                originalInfo.get(field).value(),
                                null,
                                mapLocale(originalInfo.get(field).locale()),
                                mapLocale(locale),
                                RAW_STATUS));
                    } if (value == null && origValue == null) {
                        result.add(new TranslationProcess(
                                null,
                                entityId,
                                contentType,
                                field,
                                null,
                                null,
                                mapLocale("en-US"),
                                mapLocale(locale),
                                NULL_STATUS
                        ));
                    }
                });
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

    private String mapLocale(String locale) {
        return switch (locale) {
            case "ru-RU" -> "ru";
            case "fr-FR" -> "fr";
            case "es-ES" -> "es";
            case "de-DE" -> "de";
            case "en-US" -> "en";
            default -> throw new IllegalArgumentException("locale " + locale);
        };
    }
}
