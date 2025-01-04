package org.sitefilm.contentservice.dto.main.movie;

import lombok.*;
import org.sitefilm.contentservice.dto.CountryDto;
import org.sitefilm.contentservice.dto.GenreDto;
import org.sitefilm.contentservice.dto.MovieAudioLanguageDto;
import org.sitefilm.contentservice.dto.main.VideoQualityDto;
import org.sitefilm.contentservice.dto.main.person.MinimalPersonDto;

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
