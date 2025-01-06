package org.sitefilm.userservice.dto.main.movie;

import lombok.*;
import org.sitefilm.userservice.dto.CountryDto;
import org.sitefilm.userservice.dto.GenreDto;
import org.sitefilm.userservice.dto.MovieAudioLanguageDto;
import org.sitefilm.userservice.dto.main.VideoQualityDto;
import org.sitefilm.userservice.dto.main.person.MinimalPersonDto;


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
