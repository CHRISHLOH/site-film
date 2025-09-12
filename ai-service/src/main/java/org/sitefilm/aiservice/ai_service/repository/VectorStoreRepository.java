package org.sitefilm.aiservice.ai_service.repository;

import org.sitefilm.aiservice.ai_service.dto.VectorSearchProjection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

//@Repository
//public interface VectorStoreRepository extends JpaRepository<VectorSearchProjection, UUID> {
//
//    @Query(value = """
//        SELECT vs.id as id,
//               vs.content as content,
//               vs.metadata as metadata,
//               1 - (vs.embedding <=> CAST(:embedding AS vector)) as similarity
//        FROM vector_store vs
//        ORDER BY similarity DESC
//        LIMIT :limit
//        """, nativeQuery = true)
//    List<VectorSearchProjection> findMostSimilar(
//            @Param("embedding") String embedding,
//            @Param("limit") int limit
//    );
//}