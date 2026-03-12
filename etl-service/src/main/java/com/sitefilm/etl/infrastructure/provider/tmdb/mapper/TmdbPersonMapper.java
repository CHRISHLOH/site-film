package com.sitefilm.etl.infrastructure.provider.tmdb.mapper;

import com.sitefilm.etl.domain.model.DataPersonTranslation;
import com.sitefilm.etl.domain.model.PersonImportDto;
import com.sitefilm.etl.domain.model.PersonMovieRole;
import com.sitefilm.etl.domain.model.PersonTranslationDto;
import com.sitefilm.etl.domain.model.enums.CareerType;
import com.sitefilm.etl.domain.model.enums.Gender;
import com.sitefilm.etl.domain.model.enums.Source;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonDetailsResponseDto;
import org.springframework.stereotype.Component;

import java.util.*;

@Component
public class TmdbPersonMapper {
    private static final Set<String> LANGUAGES = Set.of("English", "Russian", "French", "German", "Spanish");
    private static final Set<String> ISO_CODES = Set.of("US", "RU", "FR", "DE", "ES");
    private static final Source SOURCE = Source.TMDB;

    public List<PersonImportDto> castMapping(List<PersonDetailsResponseDto> persons, Map<Long, List<PersonMovieRole>> personMovieRoles) {
        persons.forEach(
                person -> {
                    List<PersonTranslationDto> list = person.getPersonTranslations()
                            .getTranslations()
                            .stream()
                            .filter(t -> LANGUAGES.contains(t.getEnglishName()) && ISO_CODES.contains(t.getIsoCode()))
                            .toList();
                    person.getPersonTranslations().setTranslations(list);
                }
        );

        return persons.stream().map(personDto -> {
            Long externalId = personDto.getExternalId();
            int gender = personDto.getGender();
            if (gender < 0 || gender > 2) {
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
                            }).toList();
            List<PersonMovieRole> personMovieRoleList = personMovieRoles.get(externalId);
            PersonImportDto personImportDto = new PersonImportDto();
            personImportDto.setExternalId(personDto.getExternalId());
            personImportDto.setName(personDto.getName());
            personImportDto.setBirthDate(personDto.getBirthDate());
            personImportDto.setDeathDate(personDto.getDeathDate());
            personImportDto.setGender(Gender.fromId(personDto.getGender()));
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
