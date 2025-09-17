package org.sitefilm.contentservice.dto.main.movie;

import lombok.*;
import org.sitefilm.contentservice.dto.CountryDto;
import org.sitefilm.contentservice.dto.GenreDto;
import org.sitefilm.contentservice.dto.MovieAudioLanguageDto;
import org.sitefilm.contentservice.dto.NamePeopleDto;
import org.sitefilm.contentservice.dto.main.VideoQualityDto;
import org.sitefilm.contentservice.dto.main.person.MinimalPersonDto;

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
    private LocalDate releaseDate;
    private String locale;
    private MovieTranslation translation;
    private String duration;
    private CountryDto country;
    private Set<GenreDto> genres;
    private Set<MovieAudioLanguageDto> audioMovieFormats;
    private Set<VideoQualityDto> videoQuality;
    private LocalDate createdAt;
    private LocalDate updatedAt;
    private Set<MinimalPersonDto> people;
    private List<NamePeopleDto> actors;
    private List<NamePeopleDto> directors;
    private BigDecimal rating;
}
