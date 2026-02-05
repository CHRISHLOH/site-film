package com.sitefilm.etl.entity.collections;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.time.OffsetDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Table(
        name = "collection_translations",
        schema = "content_service"
)
public class CollectionTranslation{


    @NotNull
    @Column("collection_id")
    private Long collection;

    @NotNull
    @Size(max = 5)
    @Column("locale")
    private String locale;

    @NotNull
    @Size(max = 255)
    @Column("name")
    private String name;

    @Column("description")
    private String description;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column("updated_at")
    private OffsetDateTime updatedAt;
}