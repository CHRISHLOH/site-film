package com.sitefilm.etl.entity.franchise;

import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.*;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.Id;
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
        name = "franchise_watch_orders",
        schema = "content_service"
)
public class FranchiseWatchOrder {

    @Id
    private Long id;

    @NotNull
    @Column("franchise_id")
    private Long franchiseId;

    @NotNull
    @Size(max = 100)
    @Column("code")
    private String code;

    @Size(max = 255)
    @Column("name")
    private String name;

    @Column("description")
    private String description;

    @CreatedDate
    @Column("created_at")
    private OffsetDateTime createdAt;
}