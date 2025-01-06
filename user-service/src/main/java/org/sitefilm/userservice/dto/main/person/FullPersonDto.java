package org.sitefilm.userservice.dto.main.person;

import lombok.*;
import org.sitefilm.userservice.dto.CareerDto;
import org.sitefilm.userservice.dto.CityDto;
import org.sitefilm.userservice.dto.CountryDto;
import org.sitefilm.userservice.dto.GenreDto;
import org.sitefilm.userservice.dto.main.movie.MinimalMovieForListDto;
import org.sitefilm.userservice.enums.GenderEnum;

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
    private CityDto city;
    private Set<GenreDto> genres;
    private List<MinimalMovieForListDto> movies;
    private Set<CareerDto> careers;
}
