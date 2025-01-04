package org.sitefilm.userservice.dto;

import lombok.*;

import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MinimalMovieDto {
    private Long id;
    private String title;
    private String originalTitle;
    private String description;
    private LocalDate releaseDate;
    private List<NamePeopleDto> minimalActorsPersons;
    private List<NamePeopleDto> minimalDirectorsPersons;
}