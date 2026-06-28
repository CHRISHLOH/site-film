package com.sitefilm.etl.application.aggregator;

import com.sitefilm.etl.application.cache.DictionaryRegistry;
import com.sitefilm.etl.domain.model.enums.MovieRoleType;
import com.sitefilm.etl.domain.model.person.CareerType;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.Cast;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.CreditsImported;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.Crew;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.PersonRole;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class RoleCollector {
    private final DictionaryRegistry dictionaryRegistry;

    public RoleCollector(DictionaryRegistry dictionaryRegistry) {
        this.dictionaryRegistry = dictionaryRegistry;
    }

    public Map<Long, List<PersonRole>> collectRoles(CreditsImported credits) {
        Map<Long, List<PersonRole>> rolesByPersonId = new HashMap<>();
        for (Cast cast : credits.cast()) {
            rolesByPersonId
                    .computeIfAbsent(cast.externalId(), k -> new ArrayList<>())
                    .add(new PersonRole(cast.externalId(),
                            MovieRoleType.CAST,
                            cast.order(),
                            cast.character(),
                            dictionaryRegistry.getCareer(CareerType.ACTORS, "Actor").getId()
                    ));
        }
        for (Crew crew : credits.crew()) {
            rolesByPersonId
                    .computeIfAbsent(crew.externalId(), k -> new ArrayList<>())
                    .add(new PersonRole(crew.externalId(),
                            MovieRoleType.CREW,
                            null,
                            null,
                            dictionaryRegistry.getCareer(CareerType.fromTmdb(crew.department()), crew.job()).getId()
                    ));
        }
        return rolesByPersonId;
    }
}
