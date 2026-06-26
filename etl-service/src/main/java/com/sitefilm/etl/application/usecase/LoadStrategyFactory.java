package com.sitefilm.etl.application.usecase;

import com.sitefilm.etl.application.strategies.ContentLoadStrategy;
import com.sitefilm.etl.application.strategies.MovieLoadStrategy;
import com.sitefilm.etl.domain.model.content.enums.LoadContentType;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
public class LoadStrategyFactory {
    private final Map<LoadContentType, ContentLoadStrategy> strategies;

    public LoadStrategyFactory(MovieLoadStrategy movieLoadStrategy) {
        this.strategies = Map.of(
                movieLoadStrategy.supportedContentType(), movieLoadStrategy);
    }

    public ContentLoadStrategy getStrategy(LoadContentType contentType) {
        return strategies.get(contentType);
    }
}
