package com.sitefilm.etl.dto;

import com.sitefilm.etl.entity.directories.Career;
import com.sitefilm.etl.entity.directories.Country;
import com.sitefilm.etl.entity.directories.Genre;

import java.util.Set;

public record DictionariesDto(Set<Country> countries,
        Set<Career> careers,
        Set<Genre> genres) {

}
