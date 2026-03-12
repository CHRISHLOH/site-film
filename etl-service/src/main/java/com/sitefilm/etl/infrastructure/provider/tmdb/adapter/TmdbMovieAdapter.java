package com.sitefilm.etl.infrastructure.provider.tmdb.adapter;

import com.sitefilm.etl.domain.model.ImportedMovie;
import com.sitefilm.etl.domain.model.MovieIdDto;
import com.sitefilm.etl.domain.port.api.ContentProviderPort;

import com.sitefilm.etl.domain.model.enums.ContentType;
import com.sitefilm.etl.infrastructure.provider.tmdb.client.RateLimitedTmdbClient;
import com.sitefilm.etl.infrastructure.provider.tmdb.mapper.TmdbMovieMapper;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.MovieDetailsResponseDto;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class TmdbMovieAdapter implements ContentProviderPort {
    private static final ContentType CONTENT_TYPE = ContentType.MOVIE;
    private final RateLimitedTmdbClient coreTmdbClient;
    private final TmdbMovieMapper movieMapper;

    public TmdbMovieAdapter(RateLimitedTmdbClient coreTmdbClient, TmdbMovieMapper movieMapper) {
        this.coreTmdbClient = coreTmdbClient;
        this.movieMapper = movieMapper;
    }

    @Override
    public ImportedMovie fetchDetails(Long externalId) {
        MovieDetailsResponseDto movie = coreTmdbClient.loadMovieDetails(externalId);
        return movieMapper.fetchDetails(movie);
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
    public ContentType supports() {
        return CONTENT_TYPE;
    }
}
