package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.PersonAggregateDto;
import com.sitefilm.etl.dto.core.person.PersonDetailsDto;
import com.sitefilm.etl.dto.core.person.PersonIdDto;
import com.sitefilm.etl.dto.core.person.PersonsCastDto;
import com.sitefilm.etl.entity.enums.Gender;
import com.sitefilm.etl.entity.person.Person;
import com.sitefilm.etl.entity.person.relationship.PersonTranslation;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.stream.Stream;

@Component
public class PersonAggregator {
    private final PersonLoader personLoader;

    public PersonAggregator(PersonLoader personLoader) {
        this.personLoader = personLoader;
    }

    public List<PersonAggregateDto> aggregate(PersonsCastDto personsCastDto) {
        List<Long> personIds =
                Stream.concat(
                                personsCastDto.getCast().stream(),
                                personsCastDto.getCrew().stream()
                        )
                        .map(PersonIdDto::id)
                        .distinct()
                        .toList();

        List<CompletableFuture<PersonDetailsDto>> futures =
                personIds.stream()
                        .map(personLoader::loadPerson)
                        .toList();

        CompletableFuture
                .allOf(futures.toArray(new CompletableFuture[0]))
                .join();

        List<PersonDetailsDto> personCastDto = futures.stream()
                .map(CompletableFuture::join)
                .toList();

        return personCastDto.stream().map(personDto -> {
            Person person = Person.builder()
                    .name(personDto.getName())
                    .birthDate(personDto.getBirthDate())
                    .birthDate(personDto.getBirthDate())
                    .deathDate(personDto.getDeathDate())
                    .gender(Gender.fromId(personDto.getGender()))
                    .birthPlace(personDto.getPlaceOfBirth())
                    .photoUrl(null)
                    .externalId(personDto.getExternalId())
                    .build();

            List<PersonTranslation> personTranslations =
                    personDto.getPersonTranslations().getTranslations().stream()
                            .map(personTranslationDataDto -> PersonTranslation.builder()
                                    .person(person)
                                    .locale(personTranslationDataDto.getIsoCode())
                                    .localeName(personTranslationDataDto.getPersonData().getName())
                                    .biography(personTranslationDataDto.getPersonData().getBiography())
                                    .build()).toList();
            return new PersonAggregateDto(person, personTranslations);
        }).toList();
    }
}
