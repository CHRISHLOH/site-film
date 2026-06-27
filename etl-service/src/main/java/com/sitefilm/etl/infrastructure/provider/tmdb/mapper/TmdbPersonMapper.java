package com.sitefilm.etl.infrastructure.provider.tmdb.mapper;

import com.sitefilm.etl.domain.model.person.DataPersonTranslation;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.RawPersonData;
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

    public List<RawPersonData> castMapping(List<PersonDetailsResponseDto> persons) {
        return persons.stream().map(personDto -> {
            Short gender = personDto.getGender();
            if (gender == null || gender < 0 || gender > 2) {
                gender = 0;
            }
            List<DataPersonTranslation> personTranslations = personTranslationMapper.mapTranslation(
                    personDto.getPersonTranslations().getTranslations(),
                    personDto.getName(),
                    personDto.getBiography());
            RawPersonData rawPersonData = new RawPersonData();
            rawPersonData.setExternalId(personDto.getExternalId());
            rawPersonData.setName(personDto.getName());
            rawPersonData.setBirthDate(personDto.getBirthDate());
            rawPersonData.setDeathDate(personDto.getDeathDate());
            rawPersonData.setGender(Gender.fromId(gender));
            rawPersonData.setBirthPlace(personDto.getPlaceOfBirth());
            rawPersonData.setKnownAs(knownAsMapping(personDto.getKnownAs()));
            rawPersonData.setSource(SOURCE);
            rawPersonData.setPersonTranslations(personTranslations);
            return rawPersonData;
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
