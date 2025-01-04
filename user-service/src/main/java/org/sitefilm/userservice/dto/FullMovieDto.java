package org.sitefilm.userservice.dto;

import lombok.*;

import java.time.Duration;
import java.time.LocalDate;
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
    private Set<MinimalPersonDto> people;
}
