package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.core.ContentResponse;
import com.sitefilm.etl.entity.enums.ContentType;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.stream.Collectors;

@Component
public class ContentLoadStrategyFactory {
    private final Map<ContentType, ContentLoadStrategy<?>> strategies;

    public ContentLoadStrategyFactory(List<ContentLoadStrategy<?>> strategies) {
        this.strategies = strategies.stream()
                .collect(Collectors.toMap(ContentLoadStrategy::supportedType, s -> s));
    }

    @SuppressWarnings("unchecked")
    public <T extends ContentResponse> ContentLoadStrategy<T> get(ContentType type) {
        return (ContentLoadStrategy<T>) Optional.ofNullable(strategies.get(type))
                .orElseThrow(() -> new IllegalArgumentException("No strategy for: " + type));
    }
}
