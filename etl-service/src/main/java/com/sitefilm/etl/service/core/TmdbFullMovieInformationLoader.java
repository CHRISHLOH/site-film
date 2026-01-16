package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.core.movie.MovieDetailsDto;
import com.sitefilm.etl.dto.core.movie.MovieTranslationDto;
import com.sitefilm.etl.dto.core.movie.ResponseMovieTranslationDto;
import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.content.movie.MovieDetail;
import com.sitefilm.etl.entity.content.relationship.ContentTranslation;
import com.sitefilm.etl.entity.enums.ContentType;
import com.sitefilm.etl.repository.MovieRepository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Service
public class TmdbFullMovieInformationLoader {

    private final CoreTmdbClient coreTmdbClient;
    private final MovieRepository movieRepository;
    private static final Set<String> languages = Set.of("en", "ru", "fr", "de", "es");


    public TmdbFullMovieInformationLoader(CoreTmdbClient coreTmdbClient, MovieRepository movieRepository) {
        this.coreTmdbClient = coreTmdbClient;
        this.movieRepository = movieRepository;
    }

    public MovieDetail downloadFullCoreContent(Long movieId) {

        MovieDetailsDto movieDetailsDto = coreTmdbClient.loadMovieDetails(movieId);
        Content content = new Content();
        content.setOriginalTitle(movieDetailsDto.getTitle());
        content.setContentType(ContentType.MOVIE);
        content.setReleaseDate(movieDetailsDto.getReleaseDate());
        content.setStatus(movieDetailsDto.getStatus());
        content.setAgeRating(null);
        content.setBudget(movieDetailsDto.getBudget());
        content.setBoxOffice(movieDetailsDto.getRevenue());

        MovieDetail movieDetail = new MovieDetail();
        movieDetail.setContent(content);
        movieDetail.setDurationMinutes(movieDetailsDto.getDuration());
        movieDetail.setCinemaReleaseDate(movieDetailsDto.getReleaseDate());

        return movieDetail;
    }


    public List<ContentTranslation> getContentTranslation(Long movieId) {
        ResponseMovieTranslationDto translationDto = coreTmdbClient.loadMovieTranslation(movieId);
        List<MovieTranslationDto> translations = translationDto.getMoviesTranslation().stream()
                .filter(translation ->
                        languages.contains(translation.getIsoCode()))
                .toList();

        List<ContentTranslation> contentTranslations = new ArrayList<>();

        translations.forEach(translation -> {
            ContentTranslation contentTranslation = new ContentTranslation();
            contentTranslation.setLocale(translation.getIsoCode());
            contentTranslation.setTitle(translation.getDataMovieTranslationList().getTitle());
            contentTranslation.setDescription(translation.getDataMovieTranslationList().getDescription());
        });

        return contentTranslations;
    }
}
