package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;

import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(
        name = "collections",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_collections_code", columnList = "code"),
                @Index(name = "idx_collections_display_order", columnList = "display_order")
        }
)
public class Collection extends AuditableEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @Size(max = 100)
    @Column(name = "code", nullable = false, unique = true, length = 100)
    private String code;

    @Column(name = "poster_url", columnDefinition = "TEXT")
    private String posterUrl;

    @Column(name = "display_order")
    @Builder.Default
    private Short displayOrder = 0;

    // Relationships

    @OneToMany(mappedBy = "collection", cascade = CascadeType.ALL, orphanRemoval = true)
    @Builder.Default
    private Set<CollectionTranslation> translations = new HashSet<>();

    @OneToMany(mappedBy = "collection", cascade = CascadeType.ALL, orphanRemoval = true)
    @OrderBy("displayOrder ASC")
    @Builder.Default
    private Set<CollectionItem> items = new HashSet<>();

    // Helper methods

    public void addTranslation(CollectionTranslation translation) {
        translations.add(translation);
        translation.setCollection(this);
    }

    public void removeTranslation(CollectionTranslation translation) {
        translations.remove(translation);
        translation.setCollection(null);
    }

    public void addItem(CollectionItem item) {
        items.add(item);
        item.setCollection(this);
    }

    public void removeItem(CollectionItem item) {
        items.remove(item);
        item.setCollection(null);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof Collection that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}