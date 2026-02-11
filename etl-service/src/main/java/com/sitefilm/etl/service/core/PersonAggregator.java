package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.DataPersonTranslation;
import com.sitefilm.etl.dto.PersonAggregateDto;
import com.sitefilm.etl.dto.PersonMovieRole;
import com.sitefilm.etl.dto.core.person.*;
import com.sitefilm.etl.entity.enums.MovieRoleType;
import com.sitefilm.etl.entity.enums.Gender;
import com.sitefilm.etl.entity.enums.Source;
import com.sitefilm.etl.entity.person.Person;
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
        List<Integer> personIds = Stream.concat(
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
        Map<Integer, List<PersonMovieRole>> personMovieRoles = collectRoles(personsInMovieResponseDto);

        return personCastDto.stream().map(personDto -> {
            Integer externalId = personDto.getExternalId();
            int gender = personDto.getGender();
            if (gender < 0 || gender > 2) {
                gender = 0;
            }
            Person person = Person.builder()
                    .name(personDto.getName())
                    .birthDate(personDto.getBirthDate())
                    .deathDate(personDto.getDeathDate())
                    .gender(Gender.fromId((byte) gender))
                    .birthPlace(personDto.getPlaceOfBirth())
                    .photoUrl(null)
                    .externalId(externalId)
                    .source(Source.TMDB)
                    .build();

            List<DataPersonTranslation> personTranslations =
                    personDto.getPersonTranslations().getTranslations().stream()
                            .map(p ->
                                    new DataPersonTranslation(
                                            externalId,
                                            p.getIsoCode(),
                                            p.getPersonData().getName(),
                                            p.getPersonData().getBiography()
                                    )
                            ).toList();

            List<PersonMovieRole> personMovieRoleList = personMovieRoles.get(person.getExternalId());

            return new PersonAggregateDto(person, personTranslations, personMovieRoleList);
        }).toList();
    }

    private Map<Integer, List<PersonMovieRole>> collectRoles(PersonsInMovieResponseDto dto) {
        Map<Integer, List<PersonMovieRole>> rolesByPersonId = new HashMap<>();
        for (PersonCastDto cast : dto.getCast()) {
            rolesByPersonId
                    .computeIfAbsent(cast.getExternalId(), k -> new ArrayList<>())
                    .add(PersonMovieRole.builder()
                            .type(MovieRoleType.CAST)
                            .order(cast.getOrder())
                            .character(cast.getCharacter())
                            .job("Actor")
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
