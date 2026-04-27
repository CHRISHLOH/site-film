package com.sitefilm.etl.domain.model.content;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MovieDetails implements Details{
    private Long contentId;
    private Long budget;
    private Long boxOffice;
    private Short duration;
    private LocalDate releaseDate;
}
