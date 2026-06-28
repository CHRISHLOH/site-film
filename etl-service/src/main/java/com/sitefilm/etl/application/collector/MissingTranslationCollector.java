package com.sitefilm.etl.application.collector;

import com.sitefilm.etl.domain.model.locale.DBIso;
import com.sitefilm.etl.domain.model.locale.Iso639;
import com.sitefilm.etl.domain.model.translations.TranslationContentType;
import com.sitefilm.etl.domain.model.translations.TranslationProcess;
import com.sitefilm.etl.domain.model.translations.TranslationStatus;
import org.springframework.stereotype.Component;

import java.util.*;
import java.util.stream.Collectors;

@Component
public class MissingTranslationCollector {
    private static final Set<String> LOCALES = DBIso.LOCALES_WITH_US;
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
                    String origValue = Optional.ofNullable(originalInfo.get(field))
                            .map(OriginalTranslationInfo::value)
                            .orElse(null);
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
                                mapLocale(DBIso.ISO_EN.getCode()),
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
        TranslatableFieldProvider tfp = translationsByLocale.get(DBIso.ISO_EN.getCode());
        Map<String, OriginalTranslationInfo> result = new HashMap<>();
        if (tfp != null) {
            tfp.fields().forEach((field, value) -> {
                if (value != null) {
                    result.put(field, new OriginalTranslationInfo(value, DBIso.ISO_EN.getCode()));
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
            case "ru-RU" -> Iso639.ISO_639_1_RU.getCode();
            case "fr-FR" -> Iso639.ISO_639_1_FR.getCode();
            case "es-ES" -> Iso639.ISO_639_1_ES.getCode();
            case "de-DE" -> Iso639.ISO_639_1_DE.getCode();
            case "en-US" -> Iso639.ISO_639_1_US.getCode();
            default -> throw new IllegalArgumentException("locale " + locale);
        };
    }
}
