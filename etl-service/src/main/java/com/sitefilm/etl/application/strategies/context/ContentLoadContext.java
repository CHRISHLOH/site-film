package com.sitefilm.etl.application.strategies.context;

import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.application.model.enums.LoadContentType;
import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.CreditsImported;
import com.sitefilm.etl.infrastructure.provider.tmdb.adapter.imported.PersonMovieRole;

import java.util.List;
import java.util.Map;
import java.util.Set;

public record ContentLoadContext(
        LoadContentType loadContentType,
        Long externalId,
        CreditsImported credits,
        Content content,
        Long savedContentId,
        List<Person> fetchedPersons,
        Set<Person> savedPersons,
        Map<Long, List<PersonMovieRole>> personRoles
){
    public static ContentLoadContext start(Long externalId, LoadContentType loadContentType) {
        return new ContentLoadContext(loadContentType, externalId, null, null, null, null, null, null);
    }

    public ContentLoadContext withFetchedContent(CreditsImported credits, Content content) {
        return new ContentLoadContext (loadContentType, externalId, credits, content, savedContentId,
                fetchedPersons, savedPersons, personRoles);
    }

    public ContentLoadContext withSavedContentId(Long savedContentId) {
        return new ContentLoadContext (loadContentType, externalId, credits, content, savedContentId,
                fetchedPersons, savedPersons, personRoles);
    }

    public ContentLoadContext withFetchedPersons(Map<Long, List<PersonMovieRole>> personRoles, List<Person> fetchedPersons) {
        return new ContentLoadContext (loadContentType, externalId, credits, content, savedContentId,
                fetchedPersons, savedPersons, personRoles);
    }

    public ContentLoadContext withSavedPersons(Set<Person> savedPersons) {
        return new ContentLoadContext (loadContentType, externalId, credits, content, savedContentId,
                fetchedPersons, savedPersons, personRoles);
    }
}
