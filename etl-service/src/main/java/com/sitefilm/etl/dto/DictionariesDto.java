package com.sitefilm.etl.dto;

import com.sitefilm.etl.entity.directories.Career;
import com.sitefilm.etl.entity.directories.Country;
import com.sitefilm.etl.entity.directories.Genre;

import java.util.List;

public record DictionariesDto(List<Country> countries,
        List<Career> careers,
        List<Genre> genres) {

}
