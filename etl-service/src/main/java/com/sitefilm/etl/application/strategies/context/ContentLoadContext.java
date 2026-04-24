package com.sitefilm.etl.application.strategies.context;

import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.ImportedBundle;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.PersonMovieRole;
import lombok.Data;

import java.util.List;
import java.util.Map;
import java.util.Set;

@Data
public class ContentLoadContext {
    private final Long externalId;
    private ImportedBundle importedBundle;
    private Content content;
    private Long savedContentId;
    private List<Person> fetchedPersons;
    private Set<Person> savedPersons;
    private Map<Long, PersonMovieRole> personRoles;
}
