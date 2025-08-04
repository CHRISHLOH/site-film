package org.sitefilm.aiservice.ai_service.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MovieAudioLanguageDto {
    private Long id;
    private String audioLanguage;
}