package com.sitefilm.etl.dto;

import java.util.Map;

public record DictionariesIdDto(
        Map<String, Long> countriesId,
        Map<Integer, Long> genresId,
        Map<Map<String, String>, Long> jobsId
) {
}
