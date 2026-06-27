package com.sitefilm.etl.application.mapper.tmdb;

import com.sitefilm.etl.domain.model.content.Details;
import com.sitefilm.etl.domain.model.content.enums.LoadContentType;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedContent;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

@Component
public class ContentDetailsMapperFactory {

    private final Map<LoadContentType, DetailsMapper<?, ?>> mappers;

    public ContentDetailsMapperFactory(List<DetailsMapper<?, ?>> mappers) {
        this.mappers = mappers.stream()
                .collect(Collectors.toUnmodifiableMap(
                        DetailsMapper::getLoadContentType,
                        Function.identity()
                ));
    }

    @SuppressWarnings("unchecked")
    public <T extends ImportedContent, K extends Details> DetailsMapper<T, K> getMapper(LoadContentType type) {
        return (DetailsMapper<T, K>) mappers.get(type);
    }
}
