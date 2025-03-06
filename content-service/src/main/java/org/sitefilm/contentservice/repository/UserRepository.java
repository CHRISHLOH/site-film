package org.sitefilm.contentservice.repository;

import org.sitefilm.contentservice.entity.main.UserProfile;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.UUID;

public interface UserRepository extends CrudRepository<UserProfile, Long> {
    @Query("""
            SELECT u
            FROM UserProfile AS u
            WHERE u.id = :uuid
    """)
    UserProfile findUserInfoByUuid (@Param("uuid") UUID uuid);
}
