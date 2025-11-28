package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

@Getter
@Setter
@Entity
@Table(name = "franchise_watch_order_items", schema = "content_service")
public class FranchiseWatchOrderItem {
    @Id
    @ColumnDefault("nextval('content_service.franchise_watch_order_items_id_seq'::regclass)")
    @Column(name = "id", nullable = false)
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
    @Column(name = "\"position\"", nullable = false)
    private Integer position;

    @ColumnDefault("false")
    @Column(name = "is_optional")
    private Boolean isOptional;

    @Column(name = "notes", length = Integer.MAX_VALUE)
    private String notes;

}