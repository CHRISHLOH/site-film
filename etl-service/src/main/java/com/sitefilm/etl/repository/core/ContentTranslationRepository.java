package com.sitefilm.etl.repository.core;

import com.sitefilm.etl.entity.content.relationship.ContentTranslation;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContentTranslationRepository extends CrudRepository<ContentTranslation, Long> {
}
