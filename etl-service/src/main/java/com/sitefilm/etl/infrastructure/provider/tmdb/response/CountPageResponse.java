package com.sitefilm.etl.infrastructure.provider.tmdb.response;

import com.fasterxml.jackson.annotation.JsonProperty;

public record CountPageResponse(
        @JsonProperty("total_pages")
        Short total_pages
) {
}
