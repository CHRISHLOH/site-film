package com.sitefilm.etl.infrastructure.provider.tmdb.client;

import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.TmdbMoviePageResponse;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonDetailsResponseDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.PersonsInMovieResponseDto;
import io.github.resilience4j.ratelimiter.RateLimiter;
import io.github.resilience4j.ratelimiter.RateLimiterConfig;
import io.github.resilience4j.ratelimiter.RequestNotPermitted;
import org.springframework.stereotype.Component;

import java.time.Duration;
import java.util.function.Supplier;

@Component
public class RateLimitedTmdbClient {

    private final CoreTmdbClient delegate;
    private final RateLimiter rateLimiter;

    public RateLimitedTmdbClient(CoreTmdbClient delegate) {
        this.delegate = delegate;

        RateLimiterConfig config = RateLimiterConfig.custom()
                .limitForPeriod(20)
                .limitRefreshPeriod(Duration.ofSeconds(1))
                .timeoutDuration(Duration.ofSeconds(2))
                .build();

        this.rateLimiter = RateLimiter.of("tmdb", config);
    }

    private <T> T callRateLimited(Supplier<T> supplier) {
        Supplier<T> decorated = RateLimiter.decorateSupplier(rateLimiter, supplier);
        try {
            return decorated.get();
        } catch (RequestNotPermitted e) {
            throw new RuntimeException("Rate limit exceeded for TMDB requests", e);
        }
    }

    public TmdbMoviePageResponse loadMovieIds(Integer page) {
        return callRateLimited(() -> delegate.loadMovieIds(page));
    }

    public MovieDetailsResponseDto loadMovieDetails(Long movieId) {
        return callRateLimited(() -> delegate.loadMovieDetails(movieId));
    }

    public PersonsInMovieResponseDto loadMovieCast(Long movieId) {
        return callRateLimited(() -> delegate.loadMovieCast(movieId));
    }

    public PersonDetailsResponseDto loadPersonDetails(Long personId) {
        return callRateLimited(() -> delegate.loadPersonDetails(personId));
    }
}
