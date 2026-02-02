package com.sitefilm.etl.entity.collections;

import com.sitefilm.etl.entity.content.Content;
import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;

import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(
        name = "collection_items",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_collection_items_order", columnList = "collection_id, display_order"),
                @Index(name = "idx_collection_items_content", columnList = "content_id")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_collection_item",
                        columnNames = {"collection_id", "content_id"}
                )
        }
)
public class CollectionItem {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "collection_items_seq")
    @SequenceGenerator(
            name = "collection_items_seq",
            sequenceName = "content_service.collection_items_id_seq",
            allocationSize = 50
    )
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "collection_id", nullable = false)
    private Collection collection;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;
    @NotNull
    @Column(name = "display_order", nullable = false)
    private Integer displayOrder;

    @CreatedDate
    @Column(name = "added_at", nullable = false, updatable = false)
    private OffsetDateTime addedAt;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof CollectionItem that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}