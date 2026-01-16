package com.sitefilm.etl.dto;

import com.sitefilm.etl.entity.content.movie.MovieDetail;
import com.sitefilm.etl.entity.content.relationship.ContentTranslation;

import java.util.List;

public record MovieAggregateDto(
        MovieDetail movieDetail,
        List<ContentTranslation> movieTranslations
) {


}
