package com.sitefilm.etl.infrastructure.provider.tmdb.mapper;

import com.sitefilm.etl.domain.model.person.DataPersonTranslation;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.PersonImportDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.PersonMovieRole;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonTranslationDto;
import com.sitefilm.etl.domain.model.person.CareerType;
import com.sitefilm.etl.domain.model.person.Gender;
import com.sitefilm.etl.domain.model.Source;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonDetailsResponseDto;
import org.springframework.stereotype.Component;

import java.util.*;
import java.util.stream.Collectors;

@Component
public class TmdbPersonMapper {
    private static final Set<String> iso_3166_1 = Set.of("RU", "ES", "FR", "DE");
    private static final Set<String> iso_639_1 = Set.of("ru", "es", "fr", "de");
    private static final Source SOURCE = Source.TMDB;

    public List<PersonImportDto> castMapping(List<PersonDetailsResponseDto> persons, Map<Long, List<PersonMovieRole>> personMovieRoles) {
        persons.forEach(
                person -> {
                    List<PersonTranslationDto> list = person.getPersonTranslations()
                            .getTranslations()
                            .stream()
                            .filter(t -> iso_3166_1.contains(t.getIso_3166_1()) && iso_639_1.contains(t.getIso_639_1()))
                            .toList();
                    person.getPersonTranslations().setTranslations(list);
                }
        );

        return persons.stream().map(personDto -> {
            Long externalId = personDto.getExternalId();
            Short gender = personDto.getGender();
            if (gender == null || gender < 0 || gender > 2) {
                gender = 0;
            }
            List<DataPersonTranslation> personTranslations =
                    personDto.getPersonTranslations().getTranslations().stream()
                            .map(p ->{
                                String locale = getDBLocale(p);
                                DataPersonTranslation personTranslation = new DataPersonTranslation();
                                personTranslation.setLocale(locale);
                                personTranslation.setLocaleName(p.getPersonData().getName());
                                personTranslation.setBiography(p.getPersonData().getBiography());
                                return personTranslation;
                            }).collect(Collectors.toCollection(ArrayList::new));
            personTranslations.add(new DataPersonTranslation(null,
                    "en-US",
                    personDto.getName(),
                    personDto.getBiography()));
            List<PersonMovieRole> personMovieRoleList = personMovieRoles.get(externalId);
            PersonImportDto personImportDto = new PersonImportDto();
            personImportDto.setExternalId(personDto.getExternalId());
            personImportDto.setName(personDto.getName());
            personImportDto.setBirthDate(personDto.getBirthDate());
            personImportDto.setDeathDate(personDto.getDeathDate());
            personImportDto.setGender(Gender.fromId(gender));
            personImportDto.setBirthPlace(personDto.getPlaceOfBirth());
            personImportDto.setKnownAs(knownAsMapping(personDto.getKnownAs()));
            personImportDto.setSource(SOURCE);
            personImportDto.setPersonTranslations(personTranslations);
            personImportDto.setPersonMovieData(personMovieRoleList);
            return personImportDto;
        }).toList();


    }

    private String getDBLocale(PersonTranslationDto personTranslationDto) {
        return switch (personTranslationDto.getEnglishName()) {
            case "Russian" -> "ru-RU";
            case "French" -> "fr-FR";
            case "German" -> "de-DE";
            case "Spanish" -> "es-ES";
            default -> throw new RuntimeException();
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
