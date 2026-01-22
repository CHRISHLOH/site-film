package com.sitefilm.etl.dto;

import com.sitefilm.etl.dto.core.movie.MovieDetailsDto;
import com.sitefilm.etl.dto.core.movie.ResponseMovieTranslationDto;

public record Temp(MovieDetailsDto details, ResponseMovieTranslationDto translation) {}

