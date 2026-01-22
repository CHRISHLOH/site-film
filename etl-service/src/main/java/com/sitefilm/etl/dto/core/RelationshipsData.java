package com.sitefilm.etl.dto.core;

import com.sitefilm.etl.dto.dictionaries.GenreDto;
import com.sitefilm.etl.dto.dictionaries.LanguageDto;

import java.util.List;


public record RelationshipsData(
        List<GenreDto> genres,
        List<RelationshipsCountryDto> countries,
        List<LanguageDto> spokenLanguages) {
}
