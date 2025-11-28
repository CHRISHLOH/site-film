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
        name = "franchise_translations",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_franchise_translations_franchise", columnList = "franchise_id"),
                @Index(name = "idx_franchise_translations_locale", columnList = "locale")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_franchise_translation",
                        columnNames = {"franchise_id", "locale"}
                )
        }
)
public class FranchiseTranslation {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "franchise_id", nullable = false)
    private Franchise franchise;

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

    @Size(max = 255)
    @Column(name = "tagline")
    private String tagline;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof FranchiseTranslation that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}