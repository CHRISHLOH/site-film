package com.sitefilm.etl.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.ColumnDefault;

@Getter
@Setter
@Entity
@Table(name = "franchise_translations", schema = "content_service")
public class FranchiseTranslation {
    @Id
    @ColumnDefault("nextval('content_service.franchise_translations_id_seq'::regclass)")
    @Column(name = "id", nullable = false)
    private Long id;

    @NotNull
    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "franchise_id", nullable = false)
    private Franchise franchise;

    @Size(max = 5)
    @NotNull
    @Column(name = "locale", nullable = false, length = 5)
    private String locale;

    @Size(max = 255)
    @NotNull
    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "description", length = Integer.MAX_VALUE)
    private String description;

    @jakarta.validation.constraints.Size(max = 255)
    @Column(name = "tagline")
    private String tagline;

}