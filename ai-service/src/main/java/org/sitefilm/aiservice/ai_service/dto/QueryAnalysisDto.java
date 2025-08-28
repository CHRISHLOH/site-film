package org.sitefilm.aiservice.ai_service.dto;

import lombok.*;

import java.math.BigDecimal;
import java.time.Duration;
import java.time.LocalDate;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class QueryAnalysisDto{
    private SearchType searchType;
    private String description;
    private LocalDate minReleaseDate;
    private LocalDate maxReleaseDate;
    private Duration minDuration;
    private Duration maxDuration;
    private String country;
    private List<String> genres;
    private List<String> audioMovieFormats;
    private List<String> videoQuality;
    private List<String> actors;
    private List<String> directors;
    private String plotSummary;
    private BigDecimal minRating;
    private BigDecimal maxRating;
}
