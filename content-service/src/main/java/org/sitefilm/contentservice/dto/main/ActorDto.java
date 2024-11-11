package org.sitefilm.contentservice.dto.main;

import org.sitefilm.contentservice.dto.CareerDto;
import org.sitefilm.contentservice.dto.CountryDto;
import org.sitefilm.contentservice.dto.GenreDto;
import org.sitefilm.contentservice.enums.GenderEnum;

import java.time.LocalDate;
import java.util.Set;

public record ActorDto(
        Long id,
        String firstName,
        String lastName,
        LocalDate birth_date,
        GenderEnum gender,
        CountryDto country,
        Set<GenreDto> genres,
        Set<CareerDto> careers
) {
}
