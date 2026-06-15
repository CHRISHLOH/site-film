package com.sitefilm.etl.infrastructure.provider.tmdb.validator;

import com.sitefilm.etl.application.ex.ContentValidationException;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.ContentTranslations;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.GenreDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.RelationshipsCountryDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.dictionaries.LanguageResponseDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.PersonsInMovieResponseDto;
import org.springframework.stereotype.Component;

import java.time.LocalDate;
import java.util.Collections;
import java.util.List;

@Component
public class TmdbMovieValidator {

    public ValidatedMovie validateResponseAndGet(MovieDetailsResponseDto movie) {
        Long externalId = movie.getExternalId();
        if (externalId == null) {
            throw new ContentValidationException("externalId is null");
        }
        String originalTitle = movie.getOriginalTitle();
        String title = movie.getTitle();
        if ((originalTitle == null || originalTitle.isBlank()) || (title == null || title.isBlank())) {
            throw new ContentValidationException("title is null or title is blank");
        }
        String overview = movie.getOverview();
        if (overview == null || overview.isBlank()) {
            overview = null;
        }
        String status = movie.getStatus();
        if (status == null || status.isBlank()) {
            status = null;
        }
        List<GenreDto> genres = movie.getGenres();
        if(genres == null || genres.isEmpty()) {
            genres = Collections.emptyList();
        }
        List<RelationshipsCountryDto> countries =  movie.getCountries();
        if(countries == null || countries.isEmpty()) {
            countries = Collections.emptyList();
        }
        List<LanguageResponseDto> spokenLanguages = movie.getSpokenLanguages();
        if(spokenLanguages == null || spokenLanguages.isEmpty()) {
            spokenLanguages = Collections.emptyList();
        }
        Long budget = movie.getBudget();
        LocalDate releaseDate =  movie.getReleaseDate();
        Long revenue = movie.getRevenue();
        Short duration = movie.getDuration();
        ContentTranslations contentTranslations = movie.getContentTranslations();
        PersonsInMovieResponseDto persons =  movie.getPersons();
        return new ValidatedMovie(
                externalId,
                title,
                originalTitle,
                overview,
                status,
                genres,
                budget,
                releaseDate,
                revenue,
                duration,
                countries,
                spokenLanguages,
                contentTranslations,
                persons
        );
    }
}
