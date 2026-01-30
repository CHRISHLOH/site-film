package com.sitefilm.etl.repository.core;

import com.sitefilm.etl.entity.person.relationship.PersonTranslation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PersonTranslationRepository extends JpaRepository<PersonTranslation, Long> {
}
