package com.sitefilm.etl.infrastructure.persistense.tmdb.fail;

import com.sitefilm.etl.configuration.convert.JsonbMapper;
import com.sitefilm.etl.domain.model.content.Content;
import com.sitefilm.etl.domain.model.content.DataContentTranslation;
import com.sitefilm.etl.domain.model.content.MovieDetails;
import com.sitefilm.etl.domain.model.failed.EntityType;
import com.sitefilm.etl.domain.model.failed.FailedRecord;
import com.sitefilm.etl.domain.model.failed.Stage;
import com.sitefilm.etl.domain.model.person.Person;
import com.sitefilm.etl.domain.model.ref.ContentCountry;
import com.sitefilm.etl.domain.model.ref.ContentGenre;
import com.sitefilm.etl.domain.model.ref.ContentLanguage;
import com.sitefilm.etl.domain.model.ref.ContentPerson;
import com.sitefilm.etl.infrastructure.persistense.tmdb.row.PersonIds;
import com.sitefilm.etl.infrastructure.persistense.tmdb.row.PersonTranslationRow;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class FailedRecordFactory {
    private final JsonbMapper jsonbMapper;

    public FailedRecordFactory(JsonbMapper jsonbMapper) {
        this.jsonbMapper = jsonbMapper;
    }

    public FailedRecord getSaveContentFailedRecord(Content content, RuntimeException e) {
        return new FailedRecord(
                null,
                EntityType.CONTENT,
                content.getExternalId(),
                Stage.DB_SAVE,
                e.getClass().getName(),
                e.getMessage(),
                jsonbMapper.toJson(content),
                null
        );
    }

    public FailedRecord getSaveTranslationFailedRecord(DataContentTranslation translation, Long externalId, RuntimeException e) {
        return new FailedRecord(
                null,
                EntityType.CONTENT_TRANSLATION,
                externalId,
                Stage.DB_SAVE,
                e.getClass().getName(),
                e.getMessage(),
                jsonbMapper.toJson(translation),
                null
        );
    }

    public FailedRecord getSaveDetailsFailedRecord(MovieDetails details, Long externalId, RuntimeException e) {
        return new FailedRecord(
                null,
                EntityType.CONTENT_DETAILS,
                externalId,
                Stage.DB_SAVE,
                e.getClass().getName(),
                e.getMessage(),
                jsonbMapper.toJson(details),
                null
        );
    }

    public FailedRecord getSavePersonFailedRecord(Person person, RuntimeException e) {
        return new FailedRecord(
                null,
                EntityType.PERSON,
                person.getExternalId(),
                Stage.DB_SAVE,
                e.getClass().getName(),
                e.getMessage(),
                jsonbMapper.toJson(person),
                null
        );
    }

    public FailedRecord getSavePersonTranslationFailedRecord(PersonTranslationRow t, List<PersonIds> personsWithId, RuntimeException e) {
        Long externalId = personsWithId.stream().filter(p -> p.id().equals(t.personId())).findFirst().orElseThrow().external_id();
        return new FailedRecord(
                null,
                EntityType.PERSON_TRANSLATION,
                externalId,
                Stage.DB_SAVE,
                e.getClass().getName(),
                e.getMessage(),
                jsonbMapper.toJson(t),
                null
        );
    }

    public FailedRecord getSaveNotFoundPersonFailedRecord(Long externalId, RuntimeException e) {
        return new FailedRecord(
                null,
                EntityType.PERSON,
                externalId,
                Stage.REQUEST,
                e.getClass().getName(),
                e.getMessage(),
                jsonbMapper.toJson(new NullFailedRecord("Not found")),
                null
        );
    }

    public FailedRecord getContentGenreFailedRecord(ContentGenre contentGenre, RuntimeException e) {
        return new FailedRecord(
                null,
                EntityType.RELATIONSHIP,
                contentGenre.contentId(),
                Stage.DB_SAVE,
                e.getClass().getName(),
                e.getMessage(),
                jsonbMapper.toJson(contentGenre),
                null
        );
    }
    public FailedRecord getContentCountryFailedRecord(ContentCountry contentCountry, RuntimeException e) {
        return new FailedRecord(
                null,
                EntityType.RELATIONSHIP,
                contentCountry.contentId(),
                Stage.DB_SAVE,
                e.getClass().getName(),
                e.getMessage(),
                jsonbMapper.toJson(contentCountry),
                null
        );
    }

    public FailedRecord getContentLanguageFailedRecord(ContentLanguage contentLanguage, RuntimeException e) {
        return new FailedRecord(
                null,
                EntityType.RELATIONSHIP,
                contentLanguage.contentId(),
                Stage.DB_SAVE,
                e.getClass().getName(),
                e.getMessage(),
                jsonbMapper.toJson(contentLanguage),
                null
        );
    }
    public FailedRecord getContentPersonFailedRecord(ContentPerson contentPerson, RuntimeException e) {
        return new FailedRecord(
                null,
                EntityType.RELATIONSHIP,
                contentPerson.contentId(),
                Stage.DB_SAVE,
                e.getClass().getName(),
                e.getMessage(),
                jsonbMapper.toJson(contentPerson),
                null
        );
    }
}
