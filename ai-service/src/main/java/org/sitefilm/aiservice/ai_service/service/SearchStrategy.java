package org.sitefilm.aiservice.ai_service.service;

import org.sitefilm.aiservice.ai_service.dto.QueryAnalysisDto;
import org.sitefilm.aiservice.ai_service.dto.ShortMovieInformation;

import java.util.List;

public interface SearchStrategy {

    List<ShortMovieInformation> searchMovie(QueryAnalysisDto query);
}
