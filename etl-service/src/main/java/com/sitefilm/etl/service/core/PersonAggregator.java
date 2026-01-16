package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.PersonAggregateDto;
import com.sitefilm.etl.dto.PersonCastAggregateDto;
import com.sitefilm.etl.dto.core.person.PersonIdDto;
import com.sitefilm.etl.dto.core.person.PersonsCastDto;
import com.sitefilm.etl.entity.enums.Gender;
import com.sitefilm.etl.entity.person.Person;
import com.sitefilm.etl.entity.person.relationship.PersonTranslation;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutorService;
import java.util.stream.Stream;

@Component
public class PersonAggregator {
    private final PersonLoader personLoader;
    private final ExecutorService executorService;


    public PersonAggregator(PersonLoader personLoader, ExecutorService executorService) {
        this.personLoader = personLoader;
        this.executorService = executorService;
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

        List<CompletableFuture<PersonCastAggregateDto>> futures =
                personIds.stream()
                        .map(personLoader::loadPerson)
                        .toList();

        CompletableFuture
                .allOf(futures.toArray(new CompletableFuture[0]))
                .join();

        List<PersonCastAggregateDto> personCastDto = futures.stream()
                .map(CompletableFuture::join)
                .toList();

        return personCastDto.stream().map(personDto -> {
            Person person = Person.builder()
                    .name(personDto.personDetails().getName())
                    .birthDate(personDto.personDetails().getBirthDate())
                    .birthDate(personDto.personDetails().getBirthDate())
                    .deathDate(personDto.personDetails().getDeathDate())
                    .gender(Gender.fromId(personDto.personDetails().getGender()))
                    .birthPlace(personDto.personDetails().getPlaceOfBirth())
                    .photoUrl(null)
                    .externalId(personDto.personDetails().getExternalId())
                    .build();

            List<PersonTranslation> personTranslations =
                    personDto.personTranslationData().stream()
                            .map(personTranslationDataDto -> PersonTranslation.builder()
                                    .person(person)
                                    .locale(personTranslationDataDto.locale())
                                    .localeName(personTranslationDataDto.name())
                                    .biography(personTranslationDataDto.biography())
                                    .build()).toList();
            return new PersonAggregateDto(person, personTranslations);
        }).toList();
    }
}
