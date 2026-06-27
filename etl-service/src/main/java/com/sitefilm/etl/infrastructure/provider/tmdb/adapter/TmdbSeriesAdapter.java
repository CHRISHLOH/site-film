package com.sitefilm.etl.infrastructure.provider.tmdb.adapter;

import com.sitefilm.etl.application.model.enums.LoadContentType;
import com.sitefilm.etl.domain.port.api.ContentProviderPort;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.RawContentData;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class TmdbSeriesAdapter implements ContentProviderPort {
    @Override
    public RawContentData fetchDetails(Long externalId) {
        return null;
    }

    @Override
    public LoadContentType loadContentType() {
        return null;
    }

    @Override
    public List<Long> fetchPopularIds(int page) {
        return List.of();
    }

    @Override
    public Short countPage() {
        return 0;
    }
}
