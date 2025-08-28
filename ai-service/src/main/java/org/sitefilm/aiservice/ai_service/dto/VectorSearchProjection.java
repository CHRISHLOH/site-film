package org.sitefilm.aiservice.ai_service.dto;

import java.util.UUID;

public interface VectorSearchProjection {
    UUID getId();
    String getContent();
    String getMetadata();
    Double getSimilarity();
}