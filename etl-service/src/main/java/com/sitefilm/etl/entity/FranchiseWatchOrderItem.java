package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.*;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(
        name = "franchise_watch_order_items",
        schema = "content_service",
        indexes = {
                @Index(name = "idx_watch_order_items_order", columnList = "watch_order_id, position"),
                @Index(name = "idx_watch_order_items_content", columnList = "content_id")
        },
        uniqueConstraints = {
                @UniqueConstraint(
                        name = "uk_watch_order_item",
                        columnNames = {"watch_order_id", "content_id"}
                )
        }
)
public class FranchiseWatchOrderItem {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "watch_order_id", nullable = false)
    private FranchiseWatchOrder watchOrder;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "content_id", nullable = false)
    private Content content;

    @NotNull
    @Column(name = "position", nullable = false)
    private Integer position;

    @Column(name = "is_optional")
    private Boolean isOptional;

    @Column(name = "notes", columnDefinition = "TEXT")
    private String notes;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (!(o instanceof FranchiseWatchOrderItem that)) return false;
        return id != null && id.equals(that.id);
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }
}