package com.sitefilm.etl.repository.core;

import com.sitefilm.etl.entity.content.Content;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContentRepository extends CrudRepository<Content, Long> {
}
