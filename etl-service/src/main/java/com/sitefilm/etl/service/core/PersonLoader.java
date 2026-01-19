package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.PersonCastAggregateDto;
import com.sitefilm.etl.dto.PersonTranslationDataDto;
import com.sitefilm.etl.dto.core.person.PersonDetailsDto;
import com.sitefilm.etl.dto.core.person.ResponsePersonTranslationDto;
import org.springframework.stereotype.Component;

import java.util.Set;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;

@Component
public class PersonLoader {
    private static final Set<String> languages = Set.of("en", "ru", "fr", "de", "es");
    private final CoreTmdbClient tmdbClient;
    private final ExecutorService executor;

    public PersonLoader(CoreTmdbClient tmdbClient, ExecutorService executor) {
        this.tmdbClient = tmdbClient;
        this.executor = executor;
    }

    public CompletableFuture<PersonCastAggregateDto> loadPerson(Long personId) {

        CompletableFuture<PersonDetailsDto> detailsFuture =
                CompletableFuture.supplyAsync(
                        () -> tmdbClient.loadPersonDetails(personId),
                        executor
                );

        CompletableFuture<ResponsePersonTranslationDto> translationFuture =
                CompletableFuture.supplyAsync(
                        () ->
                                tmdbClient.loadPersonTranslation(personId),
                        executor
                );

        return detailsFuture.thenCombine(
                translationFuture,
                (details, translations) ->
                        new PersonCastAggregateDto(
                                details,
                                translations.getTranslations().stream()
                                        .filter(dataTranslations ->
                                                languages.contains(dataTranslations.getIsoCode()))
                                        .map(
                                        personTranslationDto -> new PersonTranslationDataDto(
                                                personTranslationDto.getIsoCode(),
                                                personTranslationDto.getPersonData().getName(),
                                                personTranslationDto.getPersonData().getBiography()
                                        )
                                )
                                        .toList()
                        )
        );
    }
}

