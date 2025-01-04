package org.sitefilm.contentservice.dto.main.person;

import lombok.*;
import org.sitefilm.contentservice.dto.CareerDto;
import org.sitefilm.contentservice.dto.CountryDto;
import org.sitefilm.contentservice.dto.GenreDto;
import org.sitefilm.contentservice.dto.main.MoviePersonDto;
import org.sitefilm.contentservice.dto.main.movie.FullMovieDto;
import org.sitefilm.contentservice.dto.main.movie.MinimalMovieForListDto;
import org.sitefilm.contentservice.entity.City;
import org.sitefilm.contentservice.enums.GenderEnum;

import java.time.LocalDate;
import java.util.List;
import java.util.Set;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class FullPersonDto {
    private Long id;
    private String firstName;
    private String lastName;
    private LocalDate birth_date;
    private GenderEnum gender;
    private CountryDto country;
    private City city;
    private Set<GenreDto> genres;
    private List<MinimalMovieForListDto> movies;
    private Set<CareerDto> careers;
}
