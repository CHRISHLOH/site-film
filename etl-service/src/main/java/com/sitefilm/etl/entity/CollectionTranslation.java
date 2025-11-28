package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
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
public class CollectionTranslation extends AuditableEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof CollectionTranslation)) return false;
        CollectionTranslation that = (CollectionTranslation) o;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}