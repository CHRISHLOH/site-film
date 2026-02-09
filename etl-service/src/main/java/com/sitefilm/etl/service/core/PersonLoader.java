package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.core.person.PersonDetailsResponseDto;
import org.springframework.stereotype.Component;

import java.util.Set;
import java.util.concurrent.CompletableFuture;

@Component
public class PersonLoader {
    private static final Set<String> languages = Set.of("en", "ru", "fr", "de", "es");
    private final CoreTmdbClient tmdbClient;


    public PersonLoader(CoreTmdbClient tmdbClient) {
        this.tmdbClient = tmdbClient;
    }

    public CompletableFuture<PersonDetailsResponseDto> loadPerson(Long personId) {
        return CompletableFuture.supplyAsync(() -> {
                PersonDetailsResponseDto personDetails = tmdbClient.loadPersonDetails(personId);
                var filtered = personDetails.getPersonTranslations()
                    .getTranslations()
                    .stream()
                    .filter(t -> languages.contains(t.getIsoCode()))
                    .toList();
                personDetails.getPersonTranslations().setTranslations(filtered);
                return personDetails;
            }
        );
    }
}

