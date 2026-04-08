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
                                                      Map<Long, PersonMovieRole> personMovieRoles) {
        contentGenres.forEach(contentGenre -> {
            contentGenre.setContentId(id);
        });
        contentCountries.forEach(contentCountry -> {
            contentCountry.setContentId(id);
        });
        contentLanguages.forEach(contentLanguage -> {
            contentLanguage.setContentId(id);
        });
        List<ContentPerson> contentPersonList = persons.stream().map(person -> {
            PersonMovieRole personMovieRole = personMovieRoles.get(person.getExternalId());
            CareerType careerType = mapCareerType(personMovieRole.getType(), personMovieRole.getDepartment());
            return new ContentPerson(
                    id,
                    person.getId(),
                    dictionaryRegistry.getCareer(careerType, personMovieRole.getJob()).getId(),
                    personMovieRole.getCharacter(),
                    personMovieRole.getOrder()
            );
        }).toList();
        return new RelationshipsAggregatedData(contentCountries, contentGenres, contentLanguages, contentPersonList);
    }
    private CareerType mapCareerType(MovieRoleType movieRoleType, String department) {
        if (movieRoleType.getValue().equals("Cast")) {
            return CareerType.ACTORS;
        }
        return CareerType.fromTmdb(department);
    }
}
