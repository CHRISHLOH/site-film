package com.sitefilm.etl.repository.relationships;

import com.sitefilm.etl.entity.content.relationship.ContentPerson;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContentPersonRepository extends JpaRepository<ContentPerson, Long> {
}
