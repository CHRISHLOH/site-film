package org.sitefilm.userservice.repository;

import org.sitefilm.userservice.entity.DeactivatedToken;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface DeactivatedTokenRepository extends JpaRepository<DeactivatedToken, UUID> {
}
