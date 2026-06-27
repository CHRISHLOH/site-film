package com.sitefilm.etl.application.usecase;

import com.sitefilm.etl.application.strategies.ContentLoadStrategy;
import com.sitefilm.etl.application.model.enums.LoadContentType;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Component
public class LoadStrategyFactory {
    private final Map<LoadContentType, ContentLoadStrategy> strategies;

    public LoadStrategyFactory(List<ContentLoadStrategy> strategies) {
        this.strategies = strategies.stream().collect(Collectors.toMap(ContentLoadStrategy::supportedContentType, s -> s));
    }

    public ContentLoadStrategy getStrategy(LoadContentType contentType) {
        return strategies.get(contentType);
    }
}
