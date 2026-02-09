package com.sitefilm.etl.service.dictionaries;

import com.sitefilm.etl.configuration.client.DictionariesTmdbClient;
import com.sitefilm.etl.dto.dictionaries.CountryResponseDto;
import com.sitefilm.etl.entity.directories.Country;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
@RequiredArgsConstructor
public class CountriesLoadStrategy implements TmdbDictionariesLoadStrategy{

    Set<String> locales = Set.of("ru-RU", "en-US", "fr-FR", "es-ES", "de-DE");

    private final DictionariesTmdbClient dictionariesTmdbClient;


    @Override
    public List<Country> loadTmdb() {
        List<List<CountryResponseDto>> tmdbList = locales.stream().map(locales -> {
            List<CountryResponseDto> countryResponseDtoList = dictionariesTmdbClient.getCountries(locales);
            countryResponseDtoList.forEach(countryResponseDto -> countryResponseDto.setLocale(locales));
            return countryResponseDtoList;
        }).toList();

        Map<String, Country> finalMap= new HashMap<>();

        for(List<CountryResponseDto> countryResponseDtoList : tmdbList) {
            for(CountryResponseDto countryResponseDto : countryResponseDtoList) {
                finalMap.computeIfAbsent(countryResponseDto.getIsoCode(),
                        code -> {
                                Country country = new Country();
                                country.setIsoCode(code);
                                country.setTranslations(new HashMap<>());
                        return country;
                    }
                )
                .getTranslations().put(countryResponseDto.getLocale(), countryResponseDto.getNativeName());
            }
        }
        return new ArrayList<>(finalMap.values());
    }
}
