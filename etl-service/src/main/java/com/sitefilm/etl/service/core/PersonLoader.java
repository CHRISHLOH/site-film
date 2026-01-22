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


    public PersonLoader(CoreTmdbClient tmdbClient) {
        this.tmdbClient = tmdbClient;
    }

    public CompletableFuture<PersonDetailsDto> loadPerson(Long personId) {
        return CompletableFuture.supplyAsync(() -> {
                PersonDetailsDto personDetails = tmdbClient.loadPersonDetails(personId);
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

