package com.sitefilm.etl.domain.model;

import lombok.Data;

import java.time.OffsetDateTime;

@Data
public class MovieDetails implements Details{
    private Long contentId;
    private Long budget;
    private Long boxOffice;
    private Short duration;
    private OffsetDateTime releaseDate;
}
