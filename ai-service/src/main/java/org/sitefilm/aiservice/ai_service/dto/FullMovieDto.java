package org.sitefilm.aiservice.ai_service.dto;

import lombok.*;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.List;
import java.util.Set;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class FullMovieDto {
    private Long id;
    private String title;
    private String originalTitle;
    private String description;
    private LocalDate releaseDate;
    private String duration;
    private CountryDto country;
    private Set<GenreDto> genres;
    private Set<MovieAudioLanguageDto> audioMovieFormats;
    private Set<VideoQualityDto> videoQuality;
    private LocalDate createdAt;
    private LocalDate updatedAt;
    private List<NamePeopleDto> actors;
    private List<NamePeopleDto> directors;
    private String plotSummary;
    private BigDecimal rating;
}
