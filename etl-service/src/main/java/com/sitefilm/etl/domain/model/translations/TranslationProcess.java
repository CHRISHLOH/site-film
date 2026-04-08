package com.sitefilm.etl.domain.model.translations;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class TranslationProcess {
    private Long id;
    private Long contentId;
    private TranslationContentType contentType;
    private String fieldName;
    private String originalText;
    private String translatedText;
    private String sourceCode;
    private String targetCode;
    private TranslationStatus translationStatus;
}
