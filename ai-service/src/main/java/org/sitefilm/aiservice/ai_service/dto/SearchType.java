package org.sitefilm.aiservice.ai_service.dto;

import lombok.Getter;

@Getter
public enum SearchType {
    PLOT("plot"),
    METADATA("metadata"),
    HYBRID("hybrid"),
    GENERAL("general");

    private final String searchType;

    SearchType(String searchType) {
        this.searchType = searchType;
    }
}
