package com.sitefilm.etl.service.core.db;

import com.sitefilm.etl.service.core.dto.PersistentBatchDto;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
public class PersistContentFactory {

    private final PersistContentService persistContentService;
    private final PersistPersonService persistPersonService;
    private final PersistRelationshipsService persistRelationshipsService;

    public PersistContentFactory(PersistContentService persistContentService, PersistPersonService persistPersonService, PersistRelationshipsService persistRelationshipsService) {
        this.persistContentService = persistContentService;
        this.persistPersonService = persistPersonService;
        this.persistRelationshipsService = persistRelationshipsService;
    }

    @Transactional
    public void saveData(PersistentBatchDto batchDto) {
        persistContentService.saveContent(batchDto.contentList());
        persistContentService.saveTranslation(batchDto.contentTranslationList());
        persistPersonService.savePerson(batchDto.personList());
        persistPersonService.saveTranslation(batchDto.personTranslationList());
        persistRelationshipsService.save(batchDto.contentCountries(),  batchDto.contentGenres(), batchDto.contentPerson());
    }
}
