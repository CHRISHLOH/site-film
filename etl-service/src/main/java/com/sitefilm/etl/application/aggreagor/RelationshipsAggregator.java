package com.sitefilm.etl.application.aggreagor;

import com.sitefilm.etl.application.cache.DictionaryRegistry;
import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.PersonMovieRole;
import com.sitefilm.etl.domain.model.person.CareerType;
import com.sitefilm.etl.domain.model.enums.MovieRoleType;
import com.sitefilm.etl.domain.model.ref.*;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Stream;

@Component
public class RelationshipsAggregator {

    private final DictionaryRegistry dictionaryRegistry;

    public RelationshipsAggregator(DictionaryRegistry dictionaryRegistry) {
        this.dictionaryRegistry = dictionaryRegistry;
    }

    public RelationshipsAggregatedData aggregatedData(List<ContentGenre> contentGenres,
                                                      List<ContentCountry> contentCountries,
                                                      List<ContentLanguage> contentLanguages,
                                                      Set<Person> persons,
                                                      Long id,
                                                      Map<Long, List<PersonMovieRole>> personMovieRoles) {
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
                    List<PersonMovieRole> roles = personMovieRoles.get(person.getExternalId());
                    if (roles == null || roles.isEmpty()) return Stream.empty();
                    return roles.stream().map(role -> {
                        CareerType careerType = mapCareerType(role.getType(), role.getDepartment());
                        return new ContentPerson(
                                id,
                                person.getId(),
                                dictionaryRegistry.getCareer(careerType, role.getJob()).getId(),
                                role.getCharacter(),
                                role.getOrder()
                        );
                    });
                })
                .toList();
        return new RelationshipsAggregatedData(contentCountriesRes, contentGenresRes, contentLanguagesRes, contentPersonList);
    }
    private CareerType mapCareerType(MovieRoleType movieRoleType, String department) {
        if (movieRoleType.getValue().equals("Cast")) {
            return CareerType.ACTORS;
        }
        return CareerType.fromTmdb(department);
    }
}
