package com.sitefilm.etl.infrastructure.provider.tmdb.mapper;

import com.sitefilm.etl.domain.model.content.DataContentTranslation;
import com.sitefilm.etl.domain.model.content.MovieDetails;
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

@Component
public class TmdbMovieMapper {
    private static final ContentType CONTENT_TYPE = ContentType.MOVIE;
    private static final Source SOURCE = Source.TMDB;
    private final ContentTranslationMovieMapper translationMovieMapper;

    public TmdbMovieMapper(ContentTranslationMovieMapper translationMovieMapper) {
        this.translationMovieMapper = translationMovieMapper;
    }

    public RawContentData fetchDetails(ValidatedMovie movie) {
        List<DataContentTranslation> translations = translationMovieMapper.aggregate(
                movie.contentTranslations().getContentTranslations(), movie.title(), movie.overview());
        MovieDetails movieDetails = mapMovieDetails(movie);
        List<Integer> genres = genresReferenceMapping(movie.genres());
        List<String> countries = countriesReferenceMapping(movie.countries());
        List<String> spokenLanguages = languagesReferenceMapping(movie.spokenLanguages());
        List<Cast> cast = mapCast(movie.persons().getCast());
        List<Crew> crew = mapCrew(movie.persons().getCrew());
        CreditsImported credits = new CreditsImported(cast, crew);
        return new RawContentData(
                movie.originalTitle(),
                CONTENT_TYPE,
                ContentStatus.getByStatusName(movie.status()),
                movie.externalId(),
                SOURCE,
                null,
                translations,
                movieDetails,
                genres,
                countries,
                spokenLanguages,
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

    private MovieDetails mapMovieDetails(ValidatedMovie movie) {
        return new MovieDetails(null,
                movie.budget(),
                movie.revenue(),
                movie.duration(),
                movie.releaseDate());
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
