package com.sitefilm.etl.infrastructure.provider.tmdb.mapper;

import com.sitefilm.etl.domain.model.DataContentTranslation;
import com.sitefilm.etl.domain.model.GenreDto;
import com.sitefilm.etl.domain.model.ImportedMovie;
import com.sitefilm.etl.domain.model.RelationshipsCountryDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.dictionaries.LanguageResponseDto;
import com.sitefilm.etl.domain.model.enums.ContentStatus;
import com.sitefilm.etl.domain.model.enums.ContentType;
import com.sitefilm.etl.domain.model.enums.Source;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.MovieDetailsResponseDto;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class TmdbMovieMapper {
    private static final ContentType CONTENT_TYPE = ContentType.MOVIE;
    private static final Source SOURCE = Source.TMDB;
    private final ContentTranslationMovieMapper translationMovieMapper;

    public TmdbMovieMapper(ContentTranslationMovieMapper translationMovieMapper) {
        this.translationMovieMapper = translationMovieMapper;
    }
    public ImportedMovie fetchDetails(MovieDetailsResponseDto movie) {
        List<DataContentTranslation> translations = translationMovieMapper.aggregate(movie.getContentTranslations().getContentTranslations());
        List<Integer> genres = genresReferenceMapping(movie.getGenres());
        List<String> countries = countriesReferenceMapping(movie.getCountries());
        List<String> spokenLanguages = languagesReferenceMapping(movie.getSpokenLanguages());
        return ImportedMovie.builder()
                .originalTitle(movie.getOriginalTitle())
                .contentType(CONTENT_TYPE)
                .status(ContentStatus.getByStatusName(movie.getStatus()))
                .ageRating(null)
                .externalId(movie.getExternalId())
                .source(SOURCE)
                .translation(translations)
                .budget(movie.getBudget())
                .boxOffice(movie.getRevenue())
                .duration(movie.getDuration())
                .genres(genres)
                .countries(countries)
                .spokenLanguages(spokenLanguages)
                .build();
    }
    private List<Integer> genresReferenceMapping(List<GenreDto> genres) {
        return genres.stream().map(GenreDto::getExternal_id).toList();
    }

    private List<String> countriesReferenceMapping(List<RelationshipsCountryDto> countries) {
        return countries.stream().map(RelationshipsCountryDto::iso3166_1).toList();
    }

    private List<String> languagesReferenceMapping(List<LanguageResponseDto> languages) {
        return languages.stream().map(LanguageResponseDto::getIso_639_1).toList();
    }
}
