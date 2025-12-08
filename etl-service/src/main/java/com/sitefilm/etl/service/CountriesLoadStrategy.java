package com.sitefilm.etl.service;

import com.sitefilm.etl.configuration.TmdbClient;
import com.sitefilm.etl.dto.CountryDto;
import lombok.RequiredArgsConstructor;

import java.util.List;

@RequiredArgsConstructor
public class CountriesLoadStrategy implements TmdbLoadStrategy{

    List<String> locales = List.of("ru-RU", "en-US", "fr-FR", "es-ES", "de-DE");

    private final TmdbClient tmdbClient;
    @Override
    public String loadTmdb() {
        List<List<CountryDto>> listsCountries = locales.parallelStream().map(tmdbClient::getCountries).toList();



        return "";
    }
}
