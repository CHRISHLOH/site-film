package com.sitefilm.etl.application.mapper.tmdb;

import com.sitefilm.etl.domain.model.content.Details;
import com.sitefilm.etl.domain.model.content.enums.LoadContentType;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.Imported;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedContent;
import org.springframework.stereotype.Component;

import java.util.Map;

@Component
public class ContentDetailsMapperFactory {
    private final Map<LoadContentType, DetailsMapper<? extends ImportedContent, ? extends Details>> detailsMapper;

    public ContentDetailsMapperFactory(MovieDetailsMapper movieDetailsMapper) {
        this.detailsMapper = Map.of(movieDetailsMapper.getLoadContentType(), movieDetailsMapper);
    }

    public DetailsMapper<? extends Imported, ? extends Details> getDetailsMapper(LoadContentType loadContentType) {
        return detailsMapper.get(loadContentType);
    }
}
