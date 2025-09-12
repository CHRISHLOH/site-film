package org.sitefilm.aiservice.ai_service.dto;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;

@Getter
public enum SearchType {
    PLOT("plot"),
    METADATA("metadata"),
    HYBRID("hybrid"),
    GENERAL("general");

    private final String value;

    SearchType(String value) {
        this.value = value;
    }

    @JsonCreator
    public static SearchType fromString(String v) {
        if (v == null) return null;
        String s = v.strip().toLowerCase();
        for (SearchType t : values()) {
            if (t.value.equalsIgnoreCase(s) || t.name().equalsIgnoreCase(s)) {
                return t;
            }
        }
        return null; // или throw new IllegalArgumentException("Unknown SearchType: " + v);
    }

    @JsonValue
    public String toJson() {
        return this.value;
    }
}
