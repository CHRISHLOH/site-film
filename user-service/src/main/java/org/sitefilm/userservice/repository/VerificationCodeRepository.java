package org.sitefilm.userservice.repository;

import org.sitefilm.userservice.entity.VerificationCode;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.Instant;

@Repository
public interface VerificationCodeRepository extends JpaRepository<VerificationCode, Long> {
    @Query("""
        SELECT CASE WHEN COUNT(vc)>0 THEN true ELSE false END
        FROM VerificationCode vc
        WHERE vc.code = :code
          AND vc.email = :email
          AND vc.used = false
          AND vc.expiresAt > :now
    """)
    boolean compareUserCodeWithDB(
            @Param("code") String code,
            @Param("email") String email,
            @Param("now") Instant now
    );
}
