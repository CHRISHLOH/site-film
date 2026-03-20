package com.sitefilm.etl.application.mapper;

import com.sitefilm.etl.application.cache.DictionaryRegistry;
import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedMovie;
import com.sitefilm.etl.domain.model.content.MovieDetails;
import com.sitefilm.etl.domain.model.ref.ContentCountry;
import com.sitefilm.etl.domain.model.ref.ContentGenre;
import com.sitefilm.etl.domain.model.ref.ContentLanguage;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class ContentMovieMapper implements ContentMapper<ImportedMovie> {
    private final DictionaryRegistry cache;

    public ContentMovieMapper(DictionaryRegistry cache) {
        this.cache = cache;
    }

    public Content aggregateToDomain(ImportedMovie importedMovie) {
        return Content.builder()
                .originalTitle(importedMovie.getOriginalTitle())
                .contentType(importedMovie.getContentType())
                .status(importedMovie.getStatus())
                .ageRating(importedMovie.getAgeRating())
                .externalId(importedMovie.getExternalId())
                .source(importedMovie.getSource())
                .translations(importedMovie.getTranslation())
                .genres(genresRefMapping(importedMovie.getGenres()))
                .countries(countriesRefMapping(importedMovie.getCountries()))
                .spokenLanguages(spokenLanguagesRefMapping(importedMovie.getSpokenLanguages()))
                .details(movieDetailsMapping(importedMovie))
                .build();
    }

    private List<ContentGenre> genresRefMapping(List<Integer> genreIds) {
        List<ContentGenre> result = new ArrayList<>(genreIds.size());
        short order = 1;
        for (Integer id : genreIds) {
            ContentGenre contentGenre = new ContentGenre();
            contentGenre.setGenreId(cache.getGenre(id).getId());
            contentGenre.setDisplayOrder(order++);
            result.add(contentGenre);
        }
        return result;
    }

    private List<ContentCountry> countriesRefMapping(List<String> countryIds) {
        return countryIds.stream().map(country -> {
            ContentCountry contentCountry = new ContentCountry();
            contentCountry.setCountryId(cache.getCountry(country).getId());
            return contentCountry;
        }).toList();
    }

    private List<ContentLanguage> spokenLanguagesRefMapping(List<String> languages) {
        return languages.stream().map(language -> {
            ContentLanguage contentLanguage = new ContentLanguage();
            System.out.println(language);
            contentLanguage.setLanguageId(cache.getLanguage(language).getId());
            return contentLanguage;
        }).toList();
    }

    private MovieDetails movieDetailsMapping(ImportedMovie importedMovie) {
        MovieDetails movieDetails = new MovieDetails();
        movieDetails.setContentId(null);
        movieDetails.setBudget(importedMovie.getBudget());
        movieDetails.setBoxOffice(importedMovie.getBoxOffice());
        movieDetails.setDuration(importedMovie.getDuration());
        return movieDetails;
    }
}