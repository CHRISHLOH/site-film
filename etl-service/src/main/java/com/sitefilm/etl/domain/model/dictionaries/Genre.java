package com.sitefilm.etl.domain.model.dictionaries;

import lombok.*;

import java.util.Map;

@Data
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Genre {
    private Short id;
    private Integer externalId;
    private Map<String, String> translations;
}