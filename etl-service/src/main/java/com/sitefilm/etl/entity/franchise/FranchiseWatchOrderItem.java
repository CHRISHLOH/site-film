package com.sitefilm.etl.entity.franchise;

import jakarta.validation.constraints.NotNull;
import lombok.*;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(
        name = "franchise_watch_order_items",
        schema = "content_service"
)
public class FranchiseWatchOrderItem {
    @Id
    private Long id;

    @NotNull
    @Column("watch_order_id")
    private FranchiseWatchOrder watchOrder;

    @NotNull
    @Column("content_id")
    private Long contentId;

    @NotNull
    @Column("position")
    private Integer position;

    @Column("is_optional")
    private Boolean isOptional;

    @Column("notes")
    private String notes;
}