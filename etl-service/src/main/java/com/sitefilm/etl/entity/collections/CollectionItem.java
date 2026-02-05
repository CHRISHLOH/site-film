package com.sitefilm.etl.entity.collections;

import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(
        name = "collection_items",
        schema = "content_service"
)
public class CollectionItem {

    @Id
    private Long id;

    @NotNull
    @Column("collection_id")
    private Long collectionId;

    @Column("content_id")
    private Long contentId;

    @NotNull
    @Column("display_order")
    private Integer displayOrder;

    @CreatedDate
    @Column("added_at")
    private OffsetDateTime addedAt;
}