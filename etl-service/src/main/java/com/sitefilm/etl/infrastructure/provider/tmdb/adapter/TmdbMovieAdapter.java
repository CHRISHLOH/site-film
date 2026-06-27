package com.sitefilm.etl.infrastructure.provider.tmdb.adapter;

import com.sitefilm.etl.application.model.enums.LoadContentType;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.RawContentData;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.MovieIdDto;
import com.sitefilm.etl.domain.port.api.ContentProviderPort;

import com.sitefilm.etl.infrastructure.provider.tmdb.client.RateLimitedTmdbClient;
import com.sitefilm.etl.infrastructure.provider.tmdb.mapper.TmdbMovieMapper;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.validator.TmdbMovieValidator;
import com.sitefilm.etl.infrastructure.provider.tmdb.validator.ValidatedMovie;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class TmdbMovieAdapter implements ContentProviderPort {
    private static final LoadContentType LOAD_CONTENT_TYPE = LoadContentType.TMDB_MOVIE;
    private final RateLimitedTmdbClient coreTmdbClient;
    private final TmdbMovieMapper movieMapper;
    private final TmdbMovieValidator validator;

    public TmdbMovieAdapter(RateLimitedTmdbClient coreTmdbClient, TmdbMovieMapper movieMapper, TmdbMovieValidator validator) {
        this.coreTmdbClient = coreTmdbClient;
        this.movieMapper = movieMapper;
        this.validator = validator;
    }

    @Override
    public RawContentData fetchDetails(Long externalId) {
        MovieDetailsResponseDto movie = coreTmdbClient.loadMovieDetails(externalId);
        ValidatedMovie validatedMovie = validator.validateResponseAndGet(movie);
        return movieMapper.fetchDetails(validatedMovie);
    }

    @Override
    public LoadContentType loadContentType() {
        return LOAD_CONTENT_TYPE;
    }

    @Override
    public List<Long> fetchPopularIds(int page) {
        return coreTmdbClient.loadMovieIds(page)
                .getMovieIds()
                .stream()
                .map(MovieIdDto::id)
                .toList();
    }

    @Override
    public Short countPage() {
        return coreTmdbClient.loadCountPage().total_pages();
    }
}
