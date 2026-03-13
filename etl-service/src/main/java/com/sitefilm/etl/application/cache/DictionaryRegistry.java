package com.sitefilm.etl.application.cache;

import com.sitefilm.etl.domain.model.*;
import com.sitefilm.etl.domain.model.enums.CareerType;
import org.springframework.stereotype.Component;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Component
public class DictionaryRegistry {
    private Map<Integer, Genre> genreMap = new HashMap<>();
    private Map<String, Country> countryMap = new HashMap<>();
    private Map<CareerKey, Career> careerMap = new HashMap<>();
    private Map<String, Language> languageMap = new HashMap<>();

    public void register(List<Genre> genres,
                         List<Country> countries,
                         List<Career> careers,
                         List<Language> languages) {
        this.genreMap = genres.stream()
                .collect(Collectors.toMap(
                        Genre::getExternalId,
                        g -> g
                ));
        this.countryMap = countries.stream()
                .collect(Collectors.toMap(
                        Country::getIso_3166_1,
                        c -> c
                ));
        this.careerMap = careers.stream()
                .collect(Collectors.toMap(
                        c -> new CareerKey(
                                c.getType(),
                                c.getTranslations().get("en-EN")
                        ),
                        c -> c
                ));
        this.languageMap = languages.stream()
                .collect(Collectors.toMap(
                        Language::getIso_639_1,
                        l -> l
                ));
    }

    public Genre getGenre(Integer externalId) {
        return genreMap.get(externalId);
    }

    public Country getCountry(String isoCode) {
        return countryMap.get(isoCode);
    }

    public Career getCareer(CareerType type, String job) {
        return careerMap.get(new CareerKey(type, job));
    }

    public Language getLanguage(String isoCode) {
        return languageMap.get(isoCode);
    }
}
