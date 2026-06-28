package com.sitefilm.etl.application.aggregator;

import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.PersonRole;
import com.sitefilm.etl.domain.model.ref.*;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Stream;

@Component
public class RelationshipsAggregator {
    public RelationshipsAggregatedData aggregatedData(List<ContentGenre> contentGenres,
                                                      List<ContentCountry> contentCountries,
                                                      List<ContentLanguage> contentLanguages,
                                                      Set<Person> persons,
                                                      Long id,
                                                      Map<Long, List<PersonRole>> personMovieRoles) {
        List<ContentGenre> contentGenresRes = contentGenres.stream().map(
                cg -> new ContentGenre(id, cg.genreId(), cg.displayOrder())
        ).toList();
        List<ContentCountry> contentCountriesRes = contentCountries.stream().map(
                cc -> new ContentCountry(id, cc.countryId())
        ).toList();
        List<ContentLanguage> contentLanguagesRes = contentLanguages.stream().map(
                cl -> new ContentLanguage(id, cl.languageId())
        ).toList();

        List<ContentPerson> contentPersonList = persons.stream()
                .flatMap(person -> {
                    List<PersonRole> roles = personMovieRoles.get(person.getExternalId());
                    if (roles == null || roles.isEmpty()) return Stream.empty();
                    return roles.stream().map(role -> new ContentPerson(
                            id,
                            person.getId(),
                            role.careerId(),
                            role.character(),
                            role.order()
                    ));
                })
                .toList();
        return new RelationshipsAggregatedData(contentCountriesRes, contentGenresRes, contentLanguagesRes, contentPersonList);
    }
}
