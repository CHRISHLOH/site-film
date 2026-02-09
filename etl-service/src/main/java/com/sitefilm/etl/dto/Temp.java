package com.sitefilm.etl.dto;

import com.sitefilm.etl.dto.core.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.dto.core.movie.ResponseMovieTranslationDto;

public record Temp(MovieDetailsResponseDto details, ResponseMovieTranslationDto translation) {}

