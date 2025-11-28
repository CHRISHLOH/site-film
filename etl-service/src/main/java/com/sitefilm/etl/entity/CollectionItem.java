package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.time.OffsetDateTime;

@Getter
@Setter
@Entity
@Table(name = "collection_items", schema = "content_service")
public class CollectionItem {
    @EmbeddedId
    private CollectionItemId id;

    @MapsId("collectionId")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "collection_id", nullable = false)
    private Collection collection;

    @MapsId("contentId")
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @jakarta.validation.constraints.NotNull
    @Column(name = "display_order", nullable = false)
    private Integer displayOrder;

    @jakarta.validation.constraints.NotNull
    @ColumnDefault("now()")
    @Column(name = "added_at", nullable = false)
    private OffsetDateTime addedAt;

}