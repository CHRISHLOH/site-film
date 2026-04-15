package com.sitefilm.etl.infrastructure.provider.tmdb.mapper;

import com.sitefilm.etl.domain.model.person.DataPersonTranslation;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.PersonImportDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.PersonMovieRole;
import com.sitefilm.etl.domain.model.person.CareerType;
import com.sitefilm.etl.domain.model.person.Gender;
import com.sitefilm.etl.domain.model.Source;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonDetailsResponseDto;
import org.springframework.stereotype.Component;

import java.util.*;

@Component
public class TmdbPersonMapper {
    private final PersonTranslationMapper personTranslationMapper;
    private static final Source SOURCE = Source.TMDB;

    public TmdbPersonMapper(PersonTranslationMapper personTranslationMapper) {
        this.personTranslationMapper = personTranslationMapper;
    }

    public List<PersonImportDto> castMapping(List<PersonDetailsResponseDto> persons, Map<Long, List<PersonMovieRole>> personMovieRoles) {
        return persons.stream().map(personDto -> {
            Long externalId = personDto.getExternalId();
            Short gender = personDto.getGender();
            if (gender == null || gender < 0 || gender > 2) {
                gender = 0;
            }
            List<DataPersonTranslation> personTranslations = personTranslationMapper.mapTranslation(personDto.getPersonTranslations().getTranslations());
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
