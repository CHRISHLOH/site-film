package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

import java.time.OffsetDateTime;

@Getter
@Setter
@Entity
@Table(name = "franchises", schema = "content_service")
public class Franchise {
    @Id
    @ColumnDefault("nextval('content_service.franchises_id_seq'::regclass)")
    @Column(name = "id", nullable = false)
    private Long id;

    @Size(max = 100)
    @NotNull
    @Column(name = "code", nullable = false, length = 100)
    private String code;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "parent_franchise_id")
    private Franchise parentFranchise;

    @Column(name = "sort_order")
    private Integer sortOrder;

    @Column(name = "poster_url", length = Integer.MAX_VALUE)
    private String posterUrl;

    @NotNull
    @ColumnDefault("0")
    @Column(name = "depth", nullable = false)
    private Integer depth;

    @NotNull
    @ColumnDefault("now()")
    @Column(name = "created_at", nullable = false)
    private OffsetDateTime createdAt;

    @ColumnDefault("now()")
    @Column(name = "updated_at")
    private OffsetDateTime updatedAt;

}