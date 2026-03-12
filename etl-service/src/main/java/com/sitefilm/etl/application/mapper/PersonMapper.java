package com.sitefilm.etl.application.mapper;

import com.sitefilm.etl.domain.model.Person;
import com.sitefilm.etl.domain.model.PersonImportDto;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class PersonMapper {
    public List<Person> aggregateToDomain(List<PersonImportDto> importedPerson) {
        return importedPerson.stream().map(personImportDto ->
                Person.builder()
                        .name(personImportDto.getName())
                        .birthDate(personImportDto.getBirthDate())
                        .deathDate(personImportDto.getDeathDate())
                        .gender(personImportDto.getGender())
                        .birthPlace(personImportDto.getBirthPlace())
                        .knownAs(personImportDto.getKnownAs())
                        .photoUrl(null)
                        .externalId(personImportDto.getExternalId())
                        .source(personImportDto.getSource())
                        .personTranslation(personImportDto.getPersonTranslations())
                        .build()).toList();
    }
}
