package org.sitefilm.userservice.repository;

import org.sitefilm.userservice.entity.UserManagement;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<UserManagement, Long> {
    Optional<UserManagement> findByEmail(String email);
}
