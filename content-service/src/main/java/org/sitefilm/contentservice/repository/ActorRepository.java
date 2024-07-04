package org.sitefilm.contentservice.repository;

import org.sitefilm.contentservice.entity.Actor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ActorRepository extends JpaRepository <Actor, Long> {
}
