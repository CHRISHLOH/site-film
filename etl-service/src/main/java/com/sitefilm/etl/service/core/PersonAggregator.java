package com.sitefilm.etl.service.core;

import com.sitefilm.etl.dto.DataPersonTranslation;
import com.sitefilm.etl.dto.PersonAggregateDto;
import com.sitefilm.etl.dto.PersonMovieRole;
import com.sitefilm.etl.dto.core.person.*;
import com.sitefilm.etl.entity.enums.CareerType;
import com.sitefilm.etl.entity.enums.MovieRoleType;
import com.sitefilm.etl.entity.enums.Gender;
import com.sitefilm.etl.entity.enums.Source;
import com.sitefilm.etl.entity.person.Person;
import com.sitefilm.etl.service.core.db.DBExistService;
import org.springframework.stereotype.Component;

import java.util.*;
import java.util.concurrent.CompletableFuture;
import java.util.stream.Stream;

@Component
public class PersonAggregator {
    private final PersonLoader personLoader;
    private final DBExistService existService;

    public PersonAggregator(PersonLoader personLoader, DBExistService existService) {
        this.personLoader = personLoader;
        this.existService = existService;
    }

    public List<PersonAggregateDto> aggregate(PersonsInMovieResponseDto personsInMovieResponseDto) {
        List<Long> personIds = Stream.concat(
                        personsInMovieResponseDto.getCast().stream().map(PersonCastDto::getExternalId),
                        personsInMovieResponseDto.getCrew().stream().map(PersonCrewDto::getExternalId)
                )
                .distinct()
                .toList();
        Set<Long> existPersonIds = existService.personExist(personIds);

        personIds = personIds.stream().filter(personId ->
                !existPersonIds.contains(personId)
        ).toList();

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
            Long externalId = personDto.getExternalId();
            int gender = personDto.getGender();
            if (gender < 0 || gender > 2) {
                gender = 0;
            }
            Person person = Person.builder()
                    .name(personDto.getName())
                    .birthDate(personDto.getBirthDate())
                    .deathDate(personDto.getDeathDate())
                    .gender(Gender.fromId((short) gender))
                    .birthPlace(personDto.getPlaceOfBirth())
                    .photoUrl(null)
                    .externalId(externalId)
                    .knownAs(knownAsMapping(personDto.getKnownAs()))
                    .source(Source.TMDB)
                    .build();

            List<DataPersonTranslation> personTranslations =
                    personDto.getPersonTranslations().getTranslations().stream()
                            .map(p ->{
                                String locale = getDBLocale(p);
                                return new DataPersonTranslation(
                                        externalId,
                                        locale,
                                        p.getPersonData().getName(),
                                        p.getPersonData().getBiography()
                                );
                            }).toList();

            List<PersonMovieRole> personMovieRoleList = personMovieRoles.get(person.getExternalId());

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

    private String getDBLocale(PersonTranslationDto personTranslationDto) {
        return switch (personTranslationDto.getEnglishName()) {
            case "English" -> "en-EN";
            case "Russian" -> "ru-RU";
            case "French" -> "fr-FR";
            case "German" -> "de-DE";
            case "Spanish" -> "es-ES";
            default -> "en-US";
        };
    }

    private CareerType knownAsMapping(String type) {
        if ("Acting".equals(type)) {
            return CareerType.ACTORS;
        }
        return Arrays.stream(CareerType.values())
                .filter(c -> c.getValue().equals(type))
                .findFirst()
                .orElse(CareerType.UNKNOWN);
    }
}
