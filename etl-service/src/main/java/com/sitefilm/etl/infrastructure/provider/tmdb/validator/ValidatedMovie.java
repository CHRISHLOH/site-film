package com.sitefilm.etl.infrastructure.provider.tmdb.validator;

import com.sitefilm.etl.infrastructure.provider.tmdb.response.ContentTranslations;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.GenreDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.RelationshipsCountryDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.dictionaries.LanguageResponseDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.PersonsInMovieResponseDto;

import java.time.LocalDate;
import java.util.List;

public record ValidatedMovie(
        Long externalId,
        String originalTitle,
        String title,
        String overview,
        String status,
        List<GenreDto> genres,
        Long budget,
        LocalDate releaseDate,
        Long revenue,
        Short duration,
        List<RelationshipsCountryDto> countries,
        List<LanguageResponseDto> spokenLanguages,
        ContentTranslations contentTranslations,
        PersonsInMovieResponseDto persons
){}
