package com.sitefilm.etl.domain.port.repository;

import com.sitefilm.etl.domain.model.ref.*;

import java.util.List;

public interface TmdbRelationshipsRepositoryPort {
    void saveGenres(List<ContentGenre> contentGenres);
    void saveCountries(List<ContentCountry> contentCountries);
    void saveLanguages(List<ContentLanguage> contentLanguages);
    void saveContentPerson(List<ContentPerson> contentPersons);
    void saveOneGenre(ContentGenre cg);
    void saveOneCountry(ContentCountry cc);
    void saveOneLanguage(ContentLanguage cc);
    void saveOneContentPerson(ContentPerson cp);

}
