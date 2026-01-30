package com.sitefilm.etl.repository.core;

import com.sitefilm.etl.entity.content.Content;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContentRepository extends JpaRepository<Content, Long> {
}
