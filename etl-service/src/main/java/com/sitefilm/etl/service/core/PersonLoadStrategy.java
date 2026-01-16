package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.core.person.PersonDetailsDto;
import com.sitefilm.etl.dto.core.person.PersonIdDto;
import com.sitefilm.etl.dto.core.person.PersonsCastDto;
import com.sitefilm.etl.dto.core.person.ResponsePersonTranslationDto;
import com.sitefilm.etl.entity.enums.Gender;
import com.sitefilm.etl.entity.person.Person;
import com.sitefilm.etl.entity.person.relationship.PersonTranslation;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Component
public class PersonLoadStrategy{

    private final CoreTmdbClient tmdbClient;
    private PersonsCastDto personsCastDto;

    public PersonLoadStrategy(CoreTmdbClient tmdbClient) {
        this.tmdbClient = tmdbClient;
    }


    private void loadMovieCast(Long movieId) {
        PersonsCastDto movieCast = tmdbClient.loadMovieCast(movieId);

    }

    public PersonDetailsDto loadPersonDetails(Long personId) {
        PersonDetailsDto personDetailsDto =  tmdbClient.loadPersonDetails(personId);
    }

}
