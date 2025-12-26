package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.core.movie.MovieDetailsDto;
import com.sitefilm.etl.dto.core.movie.ResponseMovieTranslationDto;
import com.sitefilm.etl.entity.content.Content;
import org.springframework.stereotype.Service;

@Service
public class TmdbFullMovieInformationLoader {

    private final CoreTmdbClient coreTmdbClient;

    public TmdbFullMovieInformationLoader(CoreTmdbClient coreTmdbClient) {
        this.coreTmdbClient = coreTmdbClient;
    }

    public Content downloadFullCoreContent(Long movieId) {
        MovieDetailsDto movieDetailsDto = coreTmdbClient.loadMovieDetails(movieId);
        ResponseMovieTranslationDto translationDto = coreTmdbClient.loadMovieTranslation(movieId);

    }
}
