package com.sitefilm.etl.infrastructure.provider.tmdb.client;

import com.sitefilm.etl.application.ex.PersonNotFoundException;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.CountPageResponse;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.MovieDetailsResponseDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.TmdbMoviePageResponse;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonDetailsResponseDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.PersonsInMovieResponseDto;
import io.github.resilience4j.core.IntervalFunction;
import io.github.resilience4j.ratelimiter.RateLimiter;
import io.github.resilience4j.ratelimiter.RateLimiterConfig;

import io.github.resilience4j.ratelimiter.RequestNotPermitted;
import io.github.resilience4j.retry.Retry;
import io.github.resilience4j.retry.RetryConfig;
import org.springframework.stereotype.Component;
import org.springframework.web.client.ResourceAccessException;

import java.net.SocketTimeoutException;
import java.time.Duration;
import java.util.function.Supplier;

@Component
public class RateLimitedTmdbClient {
    private final CoreTmdbClient delegate;
    private final RateLimiter rateLimiter;
    private final Retry retry;

    public RateLimitedTmdbClient(CoreTmdbClient delegate) {
        this.delegate = delegate;

        this.rateLimiter = RateLimiter.of(
                "tmdb",
                RateLimiterConfig.custom()
                        .limitForPeriod(20)
                        .limitRefreshPeriod(Duration.ofSeconds(1))
                        .timeoutDuration(Duration.ofSeconds(30))
                        .build()
        );

        this.retry = Retry.of(
                "tmdb-retry",
                RetryConfig.custom()
                        .maxAttempts(5)
                        .intervalFunction(
                                IntervalFunction.ofExponentialBackoff(1000, 2.0))
                        .retryOnException(this::isRetryable)
                        .ignoreExceptions(PersonNotFoundException.class)
                        .build()
        );
    }

    private boolean isRetryable(Throwable e) {
        return e instanceof RequestNotPermitted
                || e instanceof SocketTimeoutException
                || e instanceof ResourceAccessException;
    }

    private <T> T callRateLimited(Supplier<T> supplier) {
        Supplier<T> decorated =
                Retry.decorateSupplier(
                        retry,
                        RateLimiter.decorateSupplier(rateLimiter, supplier)
                );

        return decorated.get();
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
        return callRateLimited(() -> {
            try {
                return delegate.loadPersonDetails(personId);
            } catch (org.springframework.web.client.HttpClientErrorException.NotFound e) {
                throw new PersonNotFoundException(
                        personId,
                        "Person not found: " + personId,
                        e
                );
            }
        });
    }

    public CountPageResponse loadCountPage() {
        return callRateLimited(delegate::loadCountPage);
    }
}
