package org.sitefilm.contentservice.dto.main.movie;

import lombok.*;
import org.sitefilm.contentservice.dto.NamePeopleDto;

import java.time.LocalDate;
import java.util.List;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class MinimalMovieForListDto {
    private Long id;
    private String title;
    private String originalTitle;
    private String description;
    private LocalDate releaseDate;
    private List<NamePeopleDto> minimalActorsPersons;
    private List<NamePeopleDto> minimalDirectorsPersons;
}
