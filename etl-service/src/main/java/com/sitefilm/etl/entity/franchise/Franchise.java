package com.sitefilm.etl.entity.franchise;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import java.time.OffsetDateTime;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(
        name = "franchises",
        schema = "content_service"
)
public class Franchise{

    @Id
    private Long id;

    @NotNull
    @Size(max = 100)
    @Column("code")
    private String code;

    @Column("parent_franchise_id")
    private Long parentFranchiseId;

    @Column("sort_order")
    private Integer sortOrder;

    @Column("poster_url")
    private String posterUrl;

    @NotNull
    @Column("depth")
    private Integer depth;

    @Column
    private String source;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;

    @LastModifiedDate
    @Column("updated_at")
    private OffsetDateTime updatedAt;
}