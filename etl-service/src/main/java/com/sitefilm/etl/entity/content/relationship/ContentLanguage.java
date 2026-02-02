package com.sitefilm.etl.entity.content.relationship;

import com.sitefilm.etl.entity.content.Content;
import com.sitefilm.etl.entity.directories.Language;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@EntityListeners(AuditingEntityListener.class)
@Table(
        name = "content_languages",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_content_languages_content", columnList = "content_id"),
                @Index(name = "idx_content_languages_language", columnList = "language_id")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_content_language",
                        columnNames = {"content_id", "language_id"}
                )
        }
)
public class ContentLanguage {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "content_languages_seq")
    @SequenceGenerator(
            name = "content_languages_seq",
            sequenceName = "content_service.content_languages_id_seq",
            allocationSize = 50
    )
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "language_id", nullable = false)
    private Language language;

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof ContentLanguage that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}