package com.sitefilm.etl.entity.collections;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.time.OffsetDateTime;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(
        name = "collections",
        schema = "content_service"
)
public class Collection{

    @Id
    private Long id;

    @NotNull
    @Size(max = 100)
    @Column("code")
    private String code;

    @Column("poster_url")
    private String posterUrl;

    @Column("display_order")
    @Builder.Default
    private Short displayOrder;

    @Column("external_Id")
    private Integer externalId;

    @Column("source")
    private String source;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column("updated_at")
    private OffsetDateTime updatedAt;
}