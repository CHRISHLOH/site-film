package org.sitefilm.aiservice.ai_service.service;

import org.sitefilm.aiservice.ai_service.dto.QueryAnalysisDto;
import org.sitefilm.aiservice.ai_service.dto.ShortMovieInformation;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HybridSearchStrategy implements SearchStrategy{
    @Override
    public List<ShortMovieInformation> searchMovie(QueryAnalysisDto query) {
        return List.of();
    }
}
