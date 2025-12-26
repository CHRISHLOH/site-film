package com.sitefilm.etl.service.core;

import com.sitefilm.etl.configuration.client.CoreTmdbClient;
import com.sitefilm.etl.dto.core.person.PersonDetailsDto;
import com.sitefilm.etl.dto.core.person.PersonIdDto;
import com.sitefilm.etl.dto.core.person.PersonsCastDto;
import com.sitefilm.etl.dto.core.person.ResponsePersonTranslationDto;
import com.sitefilm.etl.entity.enums.Gender;
import com.sitefilm.etl.entity.person.Person;
import com.sitefilm.etl.entity.person.relationship.PersonTranslation;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

public class PersonLoadStrategy{

    private final CoreTmdbClient tmdbClient;

    public PersonLoadStrategy(CoreTmdbClient tmdbClient) {
        this.tmdbClient = tmdbClient;
    }

    public void loadPersons(PersonsCastDto castDto) {
        List<PersonIdDto> castId = castDto.getCast();
        for(PersonIdDto personIdDto : castId){
            PersonDetailsDto personDetailsDto = tmdbClient.loadPersonDetails(personIdDto.id());
            ResponsePersonTranslationDto personTranslation = tmdbClient.loadPersonTranslation(personIdDto.id());

            Set<PersonTranslation> translation = personTranslation.getTranslations().stream().map(personTranslationDto -> PersonTranslation.builder()
                    .locale(personTranslationDto.getIsoCode())
                    .biography(personTranslationDto.getPersonData().getBiography())
                    .localeName(personTranslationDto.getPersonData().getName())
                    .build()).collect(Collectors.toSet());

            Person person = Person.builder()
                    .name(personDetailsDto.getName())
                    .birthDate(personDetailsDto.getBirthDate())
                    .deathDate(personDetailsDto.getDeathDate())
                    .gender(genderMapping(personDetailsDto.getGender()))
                    .birthPlace(personDetailsDto.getPlaceOfBirth())
                    .photoUrl(null)
                    .externalId(personDetailsDto.getExternalId())
                    .translations(translation)
                    .build();

        }
    }

    private Gender genderMapping(Byte genderNum) {
        return switch (genderNum)
                {
                    case 1 -> Gender.FEMALE;
                    case 2 -> Gender.MALE;
                    default -> null;
                };
    }
}
