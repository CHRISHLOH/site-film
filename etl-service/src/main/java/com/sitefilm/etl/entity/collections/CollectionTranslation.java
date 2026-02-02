package com.sitefilm.etl.entity.collections;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;

import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(
        name = "collection_translations",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_collection_translations_collection", columnList = "collection_id"),
                @Index(name = "idx_collection_translations_locale", columnList = "locale")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_collection_translation",
                        columnNames = {"collection_id", "locale"}
                )
        }
)
public class CollectionTranslation{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "collection_translations_seq")
    @SequenceGenerator(
            name = "collection_translations_seq",
            sequenceName = "content_service.collection_translations_id_seq",
            allocationSize = 50
    )
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "collection_id", nullable = false)
    private Collection collection;

    @NotNull
    @Size(max = 5)
    @Column(name = "locale", nullable = false, length = 5)
    private String locale;

    @NotNull
    @Size(max = 255)
    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    @CreatedDate
    @Column(name = "created_at", nullable = false, updatable = false)
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column(name = "updated_at")
    private OffsetDateTime updatedAt;


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof CollectionTranslation that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}