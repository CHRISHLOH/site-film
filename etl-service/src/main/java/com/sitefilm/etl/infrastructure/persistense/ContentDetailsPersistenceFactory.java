package com.sitefilm.etl.infrastructure.persistense;

import com.sitefilm.etl.domain.model.content.enums.ContentType;
import com.sitefilm.etl.infrastructure.persistense.tmdb.service.ContentDetailsPersistenceService;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Component
public class ContentDetailsPersistenceFactory {
    private final Map<ContentType, ContentDetailsPersistenceService> services;

    public ContentDetailsPersistenceFactory(List<ContentDetailsPersistenceService> services) {
        this.services = services.stream()
                .collect(Collectors.toMap(
                        ContentDetailsPersistenceService::supports,
                        s -> s
                ));
    }

    public ContentDetailsPersistenceService getFor(ContentType type) {
        ContentDetailsPersistenceService service = services.get(type);
        if (service == null) {
            throw new IllegalStateException("No persistence service registered for " + type);
        }
        return service;
    }
}
