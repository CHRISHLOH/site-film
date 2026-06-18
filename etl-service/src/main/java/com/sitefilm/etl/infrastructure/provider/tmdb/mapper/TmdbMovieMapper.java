package com.sitefilm.etl.infrastructure.provider.tmdb.mapper;

import com.sitefilm.etl.domain.model.content.DataContentTranslation;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.*;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.GenreDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.RelationshipsCountryDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.dictionaries.LanguageResponseDto;
import com.sitefilm.etl.domain.model.content.enums.ContentStatus;
import com.sitefilm.etl.domain.model.content.enums.ContentType;
import com.sitefilm.etl.domain.model.Source;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonCastDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonCrewDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.validator.ValidatedMovie;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

@Component
public class TmdbMovieMapper {
    private static final ContentType CONTENT_TYPE = ContentType.MOVIE;
    private static final Source SOURCE = Source.TMDB;
    private final ContentTranslationMovieMapper translationMovieMapper;

    public TmdbMovieMapper(ContentTranslationMovieMapper translationMovieMapper) {
        this.translationMovieMapper = translationMovieMapper;
    }

    public ImportedBundle<ImportedMovie> fetchDetails(ValidatedMovie movie) {
        List<DataContentTranslation> translations = translationMovieMapper.aggregate(
                movie.contentTranslations().getContentTranslations(), movie.title(), movie.overview());
        List<Integer> genres = genresReferenceMapping(movie.genres());
        List<String> countries = countriesReferenceMapping(movie.countries());
        List<String> spokenLanguages = languagesReferenceMapping(movie.spokenLanguages());
        ImportedMovie importedMovie = ImportedMovie.builder()
                .originalTitle(movie.originalTitle())
                .contentType(CONTENT_TYPE)
                .status(ContentStatus.getByStatusName(movie.status()))
                .ageRating(null)
                .externalId(movie.externalId())
                .source(SOURCE)
                .translation(translations)
                .budget(movie.budget())
                .boxOffice(movie.revenue())
                .duration(movie.duration())
                .genres(genres)
                .countries(countries)
                .spokenLanguages(spokenLanguages)
                .build();
        CreditsImported credits = new CreditsImported(
                mapCast(movie.persons().getCast()),
                mapCrew(movie.persons().getCrew())
        );
        return new ImportedBundle<>(
                importedMovie,
                credits
        );
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

    private List<Cast> mapCast(List<PersonCastDto> cast) {
        return cast.stream().map(personDto -> new Cast(
                personDto.getExternalId(),
                personDto.getCharacter(),
                personDto.getOrder()
        )).toList();
    }

    private List<Crew> mapCrew(List<PersonCrewDto> crew) {
        return crew.stream().map(personDto -> new Crew(
                personDto.getExternalId(),
                personDto.getDepartment(),
                personDto.getJob()
        )).toList();
    }
}
