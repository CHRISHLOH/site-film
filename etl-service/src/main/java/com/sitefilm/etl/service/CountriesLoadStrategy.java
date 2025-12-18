package com.sitefilm.etl.service;

import com.sitefilm.etl.configuration.TmdbClient;
import com.sitefilm.etl.dto.CountryDto;
import com.sitefilm.etl.entity.directories.Country;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class CountriesLoadStrategy implements TmdbDictionariesLoadStrategy<Country> {

    List<String> locales = List.of("ru-RU", "en-US", "fr-FR", "es-ES", "de-DE");

    private final TmdbClient tmdbClient;


    @Override
    public List<Country> loadTmdb() {

        List<List<CountryDto>> tmdbList = locales.stream().map(locales -> {
            List<CountryDto> countryDtoList = tmdbClient.getCountries(locales);
            countryDtoList.forEach(countryDto -> countryDto.setLocale(locales));
            return countryDtoList;
        }).toList();

        Map<String, Country> finalMap= new HashMap<>();

        for(List<CountryDto> countryDtoList : tmdbList) {
            for(CountryDto countryDto : countryDtoList) {
                finalMap.computeIfAbsent(countryDto.getIsoCode(),
                        code -> {
                                Country c = new Country();
                    c.setIsoCode(code);
                    return c;}).getTranslations().put(countryDto.getLocale(), countryDto.getNativeName());
            }
        }

        return finalMap.values().stream().toList();
    }
}
