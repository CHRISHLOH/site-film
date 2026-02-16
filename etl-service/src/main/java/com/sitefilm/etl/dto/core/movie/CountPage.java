package com.sitefilm.etl.dto.core.movie;

import com.fasterxml.jackson.annotation.JsonProperty;

public record CountPage(
        @JsonProperty("total_pages")
        Integer total_pages
) {
}
