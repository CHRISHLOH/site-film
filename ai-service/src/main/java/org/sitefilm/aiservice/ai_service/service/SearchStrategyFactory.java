package org.sitefilm.aiservice.ai_service.service;

import org.sitefilm.aiservice.ai_service.dto.QueryAnalysisDto;
import org.sitefilm.aiservice.ai_service.dto.ShortMovieInformation;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.function.Function;

@Component
public class SearchStrategyFactory implements Function<QueryAnalysisDto, List<ShortMovieInformation>> {

    private final PlotSearchStrategy plotSearchStrategy;
    private final MetadataSearchStrategy metadataSearchStrategy;
    private final HybridSearchStrategy hybridSearchStrategy;


    public SearchStrategyFactory(PlotSearchStrategy plotSearchStrategy,
                                 MetadataSearchStrategy metadataSearchStrategy,
                                 HybridSearchStrategy hybridSearchStrategy) {
        this.plotSearchStrategy = plotSearchStrategy;
        this.metadataSearchStrategy = metadataSearchStrategy;
        this.hybridSearchStrategy = hybridSearchStrategy;
    }

    @Override
    public List<ShortMovieInformation> apply(QueryAnalysisDto queryAnalysisDto) {
        switch (queryAnalysisDto.getSearchType()){
            case PLOT -> {
                return plotSearchStrategy.searchMovie(queryAnalysisDto);
            }
            case METADATA -> {
                return metadataSearchStrategy.searchMovie(queryAnalysisDto);
            }
            case HYBRID -> {
                return hybridSearchStrategy.searchMovie(queryAnalysisDto);
            }
            default ->
            {
                return null;
            }
        }
    }
}
