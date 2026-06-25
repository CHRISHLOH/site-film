package com.sitefilm.etl.application.mapper.tmdb;

import com.sitefilm.etl.application.cache.DictionaryRegistry;
import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.domain.model.ref.ContentCountry;
import com.sitefilm.etl.domain.model.ref.ContentGenre;
import com.sitefilm.etl.domain.model.ref.ContentLanguage;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedContent;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class ContentReferencesResolver {
    private final DictionaryRegistry cache;

    public ContentReferencesResolver(DictionaryRegistry cache) {
        this.cache = cache;
    }

    public Content resolveReferences(Content content, ImportedContent importedContent) {
        List<ContentGenre> contentGenres = genresRefMapping(importedContent.getGenres());
        List<ContentCountry> contentCountries = countriesRefMapping(importedContent.getCountries());
        List<ContentLanguage> contentLanguages = spokenLanguagesRefMapping(importedContent.getSpokenLanguages());
        content.setGenres(contentGenres);
        content.setCountries(contentCountries);
        content.setSpokenLanguages(contentLanguages);
        return content;
    }

    private List<ContentGenre> genresRefMapping(List<Integer> genreIds) {
        List<ContentGenre> result = new ArrayList<>(genreIds.size());
        short order = 1;
        for (Integer id : genreIds) {
            ContentGenre contentGenre = new ContentGenre(
                    null,
                    cache.getGenre(id).getId(),
                    order++
            );
            result.add(contentGenre);
        }
        return result;
    }

    private List<ContentCountry> countriesRefMapping(List<String> countryIds) {
        return countryIds.stream().map(country ->
                new ContentCountry(null, cache.getCountry(country).getId())
            ).toList();
    }

    private List<ContentLanguage> spokenLanguagesRefMapping(List<String> languages) {
        return languages.stream().map(language ->
            new ContentLanguage(null, cache.getLanguage(language).getId())
        ).toList();
    }
}
