package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.PersonAggregateDto;
import com.sitefilm.etl.dto.PersonMovieRole;
import com.sitefilm.etl.dto.core.person.*;
import com.sitefilm.etl.entity.enums.MovieRoleType;
import com.sitefilm.etl.entity.enums.Gender;
import com.sitefilm.etl.entity.person.Person;
import com.sitefilm.etl.entity.person.relationship.PersonTranslation;
import org.springframework.stereotype.Component;

import java.util.*;
import java.util.concurrent.CompletableFuture;
import java.util.stream.Stream;

@Component
public class PersonAggregator {
    private final PersonLoader personLoader;

    public PersonAggregator(PersonLoader personLoader) {
        this.personLoader = personLoader;
    }

    public List<PersonAggregateDto> aggregate(PersonsInMovieResponseDto personsInMovieResponseDto) {
        List<Long> personIds = Stream.concat(
                        personsInMovieResponseDto.getCast().stream().map(PersonCastDto::getExternalId),
                        personsInMovieResponseDto.getCrew().stream().map(PersonCrewDto::getExternalId)
                )
                .distinct()
                .toList();

        List<CompletableFuture<PersonDetailsResponseDto>> futures =
                personIds.stream()
                        .map(personLoader::loadPerson)
                        .toList();

        CompletableFuture
                .allOf(futures.toArray(new CompletableFuture[0]))
                .join();

        List<PersonDetailsResponseDto> personCastDto = futures.stream()
                .map(CompletableFuture::join)
                .toList();
        Map<Long, List<PersonMovieRole>> personMovieRoles = collectRoles(personsInMovieResponseDto);

        return personCastDto.stream().map(personDto -> {
            Person person = Person.builder()
                    .name(personDto.getName())
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
                                    .personId(person.getId())
                                    .locale(personTranslationDataDto.getIsoCode())
                                    .localeName(personTranslationDataDto.getPersonData().getName())
                                    .biography(personTranslationDataDto.getPersonData().getBiography())
                                    .build()).toList();

            List<PersonMovieRole> personMovieRoleList = personMovieRoles.get(person.getId());

            return new PersonAggregateDto(person, personTranslations, personMovieRoleList);
        }).toList();
    }

    private Map<Long, List<PersonMovieRole>> collectRoles(PersonsInMovieResponseDto dto) {
        Map<Long, List<PersonMovieRole>> rolesByPersonId = new HashMap<>();
        for (PersonCastDto cast : dto.getCast()) {
            rolesByPersonId
                    .computeIfAbsent(cast.getExternalId(), k -> new ArrayList<>())
                    .add(PersonMovieRole.builder()
                            .type(MovieRoleType.CAST)
                            .order(cast.getOrder())
                            .character(cast.getCharacter())
                            .build());
        }
        for (PersonCrewDto crew : dto.getCrew()) {
            rolesByPersonId
                    .computeIfAbsent(crew.getExternalId(), k -> new ArrayList<>())
                    .add(PersonMovieRole.builder()
                            .type(MovieRoleType.CREW)
                            .department(crew.getDepartment())
                            .job(crew.getJob())
                            .build());
        }
        return rolesByPersonId;
    }
}
