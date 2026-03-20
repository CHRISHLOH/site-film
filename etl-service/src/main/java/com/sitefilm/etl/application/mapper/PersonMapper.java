package com.sitefilm.etl.application.mapper;

import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.Cast;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.CreditsImported;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.Crew;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.PersonImportDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.movie.PersonsInMovieResponseDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonCastDto;
import com.sitefilm.etl.infrastructure.provider.tmdb.response.person.PersonCrewDto;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Stream;

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

    public List<Long> existPersons(CreditsImported credits) {
        return Stream.concat(
                        credits.cast().stream().map(Cast::externalId),
                        credits.crew().stream().map(Crew::externalId)
                )
                .distinct()
                .toList();
    }
}
