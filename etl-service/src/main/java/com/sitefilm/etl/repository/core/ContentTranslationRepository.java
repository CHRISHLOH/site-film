package com.sitefilm.etl.repository.core;

import com.sitefilm.etl.entity.content.relationship.ContentTranslation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContentTranslationRepository extends JpaRepository<ContentTranslation, Long> {
}
