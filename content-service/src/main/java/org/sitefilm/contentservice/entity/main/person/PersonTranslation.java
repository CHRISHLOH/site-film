package org.sitefilm.contentservice.entity.main.person;

import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import java.time.OffsetDateTime;

@Entity
@Table(name = "person_translations", schema = "content_service",
        uniqueConstraints = @UniqueConstraint(columnNames = {"person_id", "locale"}))
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PersonTranslation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "person_id", nullable = false)
    private Person person;

    @Column(name = "locale", nullable = false, length = 10)
    private String locale;

    @Column(name = "locale_name", length = 512)
    private String localeName;

    @Column(name = "original_name", length = 512)
    private String originalName;

    @Column(name = "biography", columnDefinition = "TEXT")
    private String biography;

    @Column(name = "created_at", nullable = false)
    @CreationTimestamp
    private OffsetDateTime createdAt;

    @Column(name = "updated_at")
    @UpdateTimestamp
    private OffsetDateTime updatedAt;
}
