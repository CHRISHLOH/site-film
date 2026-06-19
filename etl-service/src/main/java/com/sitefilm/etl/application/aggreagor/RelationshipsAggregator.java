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
        contentGenres.forEach(contentGenre -> {
            contentGenre.setContentId(id);
        });
        contentCountries.forEach(contentCountry -> {
            contentCountry.setContentId(id);
        });
        contentLanguages.forEach(contentLanguage -> {
            contentLanguage.setContentId(id);
        });
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
        return new RelationshipsAggregatedData(contentCountries, contentGenres, contentLanguages, contentPersonList);
    }
    private CareerType mapCareerType(MovieRoleType movieRoleType, String department) {
        if (movieRoleType.getValue().equals("Cast")) {
            return CareerType.ACTORS;
        }
        return CareerType.fromTmdb(department);
    }
}
