package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.core.movie.MovieTranslationDto;
import com.sitefilm.etl.dto.core.person.PersonDetailsResponseDto;

import com.sitefilm.etl.dto.core.person.PersonTranslationDto;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;

@Component
public class PersonLoader {
    private final ExecutorService executorService;
    private static final Set<String> languages = Set.of("English", "Russian", "French", "German", "Spanish");
    private static final Set<String> isoCodes = Set.of("US", "RU", "FR", "DE", "ES");
    private final CoreTmdbClient tmdbClient;


    public PersonLoader(@Qualifier("personExecutor") ExecutorService executorService, CoreTmdbClient tmdbClient) {
        this.executorService = executorService;
        this.tmdbClient = tmdbClient;
    }

    public CompletableFuture<PersonDetailsResponseDto> loadPerson(Long personId) {
        return CompletableFuture.supplyAsync(() -> {
                PersonDetailsResponseDto personDetails = tmdbClient.loadPersonDetails(personId);
                List<PersonTranslationDto> translations = personDetails.getPersonTranslations()
                    .getTranslations()
                    .stream()
                    .filter(t -> languages.contains(t.getEnglishName()) && isoCodes.contains(t.getIsoCode()))
                    .toList();
                personDetails.getPersonTranslations().setTranslations(translations);
                return personDetails;
            }, executorService
        );
    }
}

