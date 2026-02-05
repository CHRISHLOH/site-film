package com.sitefilm.etl.service.dictionaries;

import com.sitefilm.etl.configuration.client.DictionariesTmdbClient;
import com.sitefilm.etl.dto.dictionaries.CountryDto;
import com.sitefilm.etl.entity.directories.Country;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class CountriesLoadStrategy implements TmdbDictionariesLoadStrategy{

    Set<String> locales = Set.of("ru-RU", "en-US", "fr-FR", "es-ES", "de-DE");

    private final DictionariesTmdbClient dictionariesTmdbClient;


    @Override
    public List<Country> loadTmdb() {
        List<List<CountryDto>> tmdbList = locales.stream().map(locales -> {
            List<CountryDto> countryDtoList = dictionariesTmdbClient.getCountries(locales);
            countryDtoList.forEach(countryDto -> countryDto.setLocale(locales));
            return countryDtoList;
        }).toList();

        Map<String, Country> finalMap= new HashMap<>();

        for(List<CountryDto> countryDtoList : tmdbList) {
            for(CountryDto countryDto : countryDtoList) {
                finalMap.computeIfAbsent(countryDto.getIsoCode(),
                        code -> {
                                Country country = new Country();
                                country.setIsoCode(code);
                        return country;
                    }
                )
                .getTranslations().put(countryDto.getLocale(), countryDto.getNativeName());
            }
        }
        return new ArrayList<>(finalMap.values());
    }
}
